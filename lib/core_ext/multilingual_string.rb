# A simple wrapper around multiple equivalent forms of a string.
# It takes a primary form (which will be the default to display
# when #to_s is called) as well as a hash of alternatives, each
# of which will get its own method defined. For instance:
#
# word = MultilingualString.new("слово", transliteration: "slovo")
# word.to_s
# > "слово"
# word.transliteration
# > "slovo"

class MultilingualString
  def initialize(primary, opts = {})
    @primary = primary
    @opts = opts
    @opts.each do |k, v|
      define_singleton_method(k) { return v }
    end
  end

  def to_s
    @primary
  end
end
