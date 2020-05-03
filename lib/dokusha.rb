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
  # Your code goes here...
end
