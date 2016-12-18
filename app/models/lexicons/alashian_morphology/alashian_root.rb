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
    PLOSIVES = %w(p ph b t th d k kh g)
    ASPIRATABLE = %w(p t k)

    def initialize(root)
      @root = root
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

    def force_triconsonantal
      if @c3.nil?
        self.class.new(@root).force_triconsonantal!
      else
        self
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
      self
    end

    def sound_stem?
      !!@sound_stem
    end

    def geminate_stem?
      @c2 == @c3
    end

    [:c1, :c2, :c3, :c4].each do |var|
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

      define_method :"t#{var}_lenited" do
        component = send(:"t#{var}")
        case component
          when "b" then "v"
          when "d" then "ḏ"
          when "g" then "ǧ"
          else          component
        end
      end

      define_method :"t#{var}_geminated_or_aspirated" do
        component = send(:"t#{var}")
        case component
          when "ph", "th", "kh", "tsh", "čh"
            component
          when "p", "t", "k", "č"
            component + "h"
          else
            component * 2
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

      define_method :"#{var}_lenited" do
        component = send(var)
        case component
          when "β" then "в̄"
          when "δ" then "δ̄"
          when "γ" then "γ̄"
          else          component
        end
      end

      define_method "#{var}_geminated_or_aspirated" do
        component = send(var)
        case component
          when "ππ", "ττ", "κκ", "τσ", "τζζ"
            component
          when "τζ"
            "τζζ"
          else
            component * 2
        end
      end
    end

    def tv
      @v
    end

    def v
      TRANSLITERATION_HASH[@v]
    end

    def short_v
      case @v
        when "ā" then "α"
        when "ē" then "ε"
        when "ī" then "ι"
        when "ū" then "υ"
      end
    end

    def short_tv
      case @v
        when "ā" then "a"
        when "ē" then "e"
        when "ī" then "i"
        when "ū" then "u"
      end
    end

    {
      :aspirate    => ASPIRATES,
      :aspiratable => ASPIRATABLE,
      :plosive     => PLOSIVES,
    }.each do |consonant_class, consonant_set|
      define_method :"initial_#{consonant_class}?" do
        consonant_set.include?(@c1)
      end

      define_method :"medial_#{consonant_class}?" do
        @c3 && consonant_set.include?(@c2)
      end

      define_method :"final_#{consonant_class}?" do
        consonant_set.include?([@c4, @c3, @c2].compact.first)
      end
    end
  end
end
