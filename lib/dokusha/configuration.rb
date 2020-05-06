module Dokusha
  class Configuration
    attr_accessor :redis_options

    def initialize
      @redis_options = { host: '127.0.0.1', port: 6379 }
    end
  end
end
