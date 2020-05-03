module Dokusha
  class Meaning
    attr_reader :text, :primary

    def initialize(text, primary = true)
      @text = text
      @primary = primary
    end

    def primary?
      @primary
    end
  end
end
