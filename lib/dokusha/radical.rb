module Dokusha
  class Radical
    attr_reader :glyph, :strokes, :meaning, :reading, :variant_of

    def initialize(glyph, strokes, meaning, reading, variant_of = nil)
      @glyph = glyph
      @strokes = strokes
      @meaning = meaning
      @reading = reading
      @variant_of = variant_of
    end
  end
end
