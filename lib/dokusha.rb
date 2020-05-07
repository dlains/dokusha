require 'redisgraph'

require 'dokusha/configuration'
require 'dokusha/kanji'
require 'dokusha/meaning'
require 'dokusha/radical'
require 'dokusha/reading'
require 'dokusha/version'
require 'dokusha/word'

# Ignore any error loading byebug if it isn't avalable.
begin
  require 'byebug'
rescue LoadError
end

module Dokusha
  class Error < StandardError; end

  def self.graph
    @graph ||= RedisGraph.new("dokusha", redis_options = configuration.redis_options)
  end

  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
