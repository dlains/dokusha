module Dokusha
  class Reading
    attr_reader :text, :type

    def initialize(text, type = "on'yomi")
      @text = text
      @type = type
    end
  end
end
