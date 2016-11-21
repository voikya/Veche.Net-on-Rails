module Lexicons
  class AlashianRoot
    TRANSLITERATION_HASH = {
      "'"   => "",
      "b"   => "β",
      "v"   => "в̄",
      "g"   => "γ",
      "ǧ"   => "γ̄",
      "d"   => "δ",
      "ḏ"   => "δ̄",
      "z"   => "ζ",
      "h"   => "η",
      "ṯ"   => "θ",
      "y"   => "ι",
      "k"   => "κ",
      "kh"  => "κκ",
      "l"   => "λ",
      "m"   => "μ",
      "n"   => "ν",
      "p"   => "π",
      "ph"  => "ππ",
      "r"   => "ρ",
      "ř"   => "ρ̄",
      "s"   => "σ",
      "tsh" => "τσ",
      "š"   => "σ̄",
      "t"   => "τ",
      "th"  => "ττ",
      "č"   => "τζ",
      "čh"  => "τζζ",
      "w"   => "υ",
      "f"   => "φ",
      "x"   => "χ",
      "a"   => "α",
      "ā"   => "ω",
      "e"   => "ε",
      "ē"   => "η",
      "i"   => "ι",
      "ī"   => "ει",
      "u"   => "υ",
      "ū"   => "ου",
      "ie"  => "ιη",
      "uo"  => "υω",
      "ə"   => "α"
    }

    C = "(" + %w(' b v g ǧ ḏ d z h ṯ y kh k l m n ph p r ř s tsh š th t čh č w f x).join("|") + ")"
    V = "(" + %w(a ā ē e ie i ī uo u ū ə).join("|") + ")"

    ASPIRATES = %w(ph th kh tsh čh)

    def initialize(root)
      case root
        when /^#{C}#{V}#{C}$/
          # Biconsonantal
          @c1, @v, @c2 = $1, $2, $3
        when /^#{C}a#{C}\2$/
          # Reduplicative
          @c1, @c2, @c3 = $1, $2, $2
        when /^#{C}#{C}#{V}#{C}$/
          # Triconsonantal
          @c1, @c2, @v, @c3 = $1, $2, $3, $4
        when /^#{C}a#{C}#{C}ē#{C}$/
          # Quadriconsonantal
          @c1, @c2, @c3, @c4 = $1, $2, $3, $4
        when /^#{C}/
          @c1 = $1
          @sound_stem = true
      end
    end

    def force_triconsonantal!
      if @c3.nil?
        @c3 = @c2
        @c2 = case @v
                when "ī" then "y"
                when "ū" then "w"
                when "ē" then "h"
                when "ā" then "h"
              end
      end
    end

    def sound_stem?
      !!@sound_stem
    end

    [:c1, :c2, :c3, :c4, :v].each do |var|
      define_method :"t#{var}" do
        return instance_variable_get(:"@#{var}")
      end

      define_method :"t#{var}_unaspirated" do
        component = send(:"t#{var}")
        case component
          when "tsh" then "s"
          when /.h/  then component[0]
          else            component
        end
      end

      define_method var do
        return TRANSLITERATION_HASH[instance_variable_get(:"@#{var}")]
      end

      define_method :"#{var}_unaspirated" do
        component = send(var)
        case component
          when "τζζ"   then "τζ"
          when "τσ"    then "σ"
          when /(.)\1/ then component[0]
          else         component
        end
      end
    end

    def initial_aspirate?
      ASPIRATES.include?(@c1)
    end

    def medial_aspirate?
      @c3 && ASPIRATES.include?(@c2)
    end

    def final_aspirate?
      ASPIRATES.include?([@c4, @c3, @c2].compact.first)
    end
  end
end
