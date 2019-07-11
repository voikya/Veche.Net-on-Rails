# Define better boolean typecasting

class String
  def to_bool
    return true if self =~ /^(true|t|yes|y|1)$/i
    return false if self == "" || self =~ /^(false|f|no|n|0)$/i
    raise ArgumentError.new("Invalid value for Boolean: \"#{self}\"")
  end
end

class Integer
  def to_bool
    self == 1
  end
end

class TrueClass
  def to_bool
    true
  end
end

class FalseClass
  def to_bool
    false
  end
end

class NilClass
  def to_bool
    false
  end
end
