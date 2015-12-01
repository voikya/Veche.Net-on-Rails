# Monkeypatch support for ActiveRecord::Base.find_or_create_by.
# This can be removed after upgrading to Rails 4.

class ActiveRecord::Base
  class << self
    def find_or_create_by(args)
      where(args).first or create(args)
    end
  end
end

require_relative "seeds/news"
require_relative "seeds/features"
require_relative "seeds/phonemes"
