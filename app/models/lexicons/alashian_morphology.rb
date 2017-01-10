Dir["#{File.dirname(__FILE__)}/alashian_morphology/**/*.rb"].each {|f| require f}

module Lexicons
  class AlashianMorphology < ActiveRecord::Base
    self.table_name = 'alashian_morphology'

    belongs_to :alashian, :foreign_key => :entry_id

    ATTRIBUTES = [
      :entry_id, :category, :stem, :stem_transliterated, :group, :subgroup, :flags
    ]

    # I would strongly recommend using a regex visualizer if you attempt to edit this,
    # one that supports lookbehind such as https://www.debuggex.com/
    STRESSED_VOWEL_REGEX = /(?:(?:(ω|η|ει|ου|ιη|υω)(?=[^αωεηιου]*$))|(?:([αεηιυω]|ει|ου|ιη|υω)(?=(?:[^αωεηιουἠ]+(?:[αειυἠ]|οὐ)){1,2}[^αωεηιουἠ]*$))|(?:(?:(?<=^)|(?<=^[^αωεηιου])|(?<=^[^αωεηιου][^αωεηιου])|(?<=^[^αωεηιου][^αωεηιου][^αωεηιου]))([αειυ])(?=[^αωεηιου]*$)))/

    def as_json(options={})
      {
        :category => category,
        :group => group,
        :subgroup => subgroup,
        :stem => stem,
        :stem_transliterated => stem_transliterated,
        :flags => flags
      }
    end

    def generate!
      # Import category-specific methods
      module_name = [
        "Morphology",
        "Alashian",
        category.classify.pluralize
      ].join("::")
      extend module_name.constantize
      # Import specific morphology methods
      module_name = [
        module_name,
        group.titleize.gsub(/[^A-Za-z0-9]/, ''),
        subgroup.titleize.gsub(/[^A-Za-z0-9]/, '')
      ].join("::")
      extend module_name.constantize
      self
    end

    private

    def root
      @root ||= alashian.parsed_root
    end

    def template(*args)
      if args.any? { |arg| arg =~ /^t?c3/ }
        parsed_root = root.force_triconsonantal
      else
        parsed_root = root
      end
      args.map.with_index do |component, idx|
        if component.is_a? Symbol
          if [:c1, :c2, :c3, :c4, :tc1, :tc2, :tc3, :tc4].include?(component)
            # Unless the consonant is surrounded by vowels on both sides,
            # we need to ensure that it is not aspirated.
            previous_is_vowel = idx > 0 && (args[idx - 1] =~ /t?v/ || args[idx - 1].is_a?(String))
            next_is_vowel = idx < args.length - 1 && (args[idx + 1] =~ /t?v/ || args[idx + 1].is_a?(String))
            if previous_is_vowel && next_is_vowel
              parsed_root.send(component)
            else
              parsed_root.send(:"#{component}_unaspirated")
            end
          else
            parsed_root.send(component)
          end
        else
          component
        end
      end.join
    end

    def method_missing(method, *args, &block)
      if method.to_s[-1] == '?'
        @flags ||= (flags || "").split(' ').map(&:strip).map(&:to_sym)
        @flags.include? method[0..-2].to_sym
      else
        method = "_#{method}".to_sym
        if respond_to? method
          if res = send(method)
            processed = postprocess res, method
            MultilingualString.new(processed[0], :transliteration => processed[1])
          end
        end
      end
    end

    # Override in modules if generic postprocessing tratment is needed
    def postprocess(string, form)
      [reformat_sigma(apply_stress(string[0])), string[1]]
    end

    def reformat_sigma(string)
      string.gsub(/(?:σ|σ̄)$/, { 'σ' => 'ς', 'σ̄' => 'ς̄' })
    end

    def apply_stress(string)
      stressed = string
      is_capitalized_vowel = string =~ /^[ΑΩΕΗΙΟΥ]/

      if is_capitalized_vowel
        stressed = string.sub(/^./, {
          # Downcase initial capital vowel letters, if any (consonants don't matter)
          'Α' => 'α',
          'Ω' => 'ω',
          'Ε' => 'ε',
          'Η' => 'η',
          'Ι' => 'ι',
          'Ο' => 'ο',
          'Υ' => 'υ'
        })
      end

      stressed = stressed.gsub(/((?:\p{Word}|'|’)+)/) do |word|
        word
          .gsub(/(ι(?=[αωεου’])|(?<=[α])ι|(?<=[αε])υ|(?<=[αωηιυ])ι(?=[αωειου])|(?<=[αωεηιυ'])[υη](?=[αωειουἀἠ]))/, {
            # Convert consonantal ι/υ/η to y/w/h for matching purposes
            'ι' => 'y',
            'υ' => 'w',
            'η' => 'h'
          })
          .sub(STRESSED_VOWEL_REGEX, {
            # Apply stess rules
            'α'  => 'ά',
            'ω'  => 'ώ',
            'ε'  => 'έ',
            'η'  => 'ή',
            'ι'  => 'ί',
            'ει' => 'εί',
            'υ'  => 'ύ',
            'ου' => 'ού',
            'ιη' => 'ιή',
            'υω' => 'υώ'
          })
          .gsub(/[ywh']/, {
            # Restore semivowels and remove ' (to disambiguate stress)
            'y'  => 'ι',
            'w'  => 'υ',
            'h'  => 'η',
            '\'' => ''
          })
      end

      if is_capitalized_vowel
        stressed = stressed.sub(/^./, {
          'α' => 'Α', 'ά' => 'Ά',
          'ω' => 'Ω', 'ώ' => 'Ώ',
          'ε' => 'Ε', 'έ' => 'Έ',
          'η' => 'Η', 'ή' => 'Ή',
          'ι' => 'Ι', 'ί' => 'Ί',
          'ο' => 'Ο', 'ό' => 'Ό',
          'υ' => 'Υ', 'ύ' => 'Ύ'
        })
      end

      stressed
    end

    def geminate_initial_consonant(string)
      string.gsub(/((?<=^τ)ζ|^в̄|^δ̄|^γ̄|^ρ̄|^σ̄|^[^αωεηο'h](?=[αωεηιουaāeēiīuūə]))/, '\1\1')
    end
  end
end
