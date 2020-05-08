module Dokusha
  # Some information about checking for a Kanji character. In case you need it in the future.
  # REFERENCE UNICODE TABLES:
  # http://www.rikai.com/library/kanjitables/kanji_codes.unicode.shtml
  # http://www.tamasoft.co.jp/en/general-info/unicode.html
  #
  # TEST EDITOR:
  # http://www.gethifi.com/tools/regex
  #
  # UNICODE RANGE : DESCRIPTION
  #
  # 3000-303F : punctuation
  # 3040-309F : hiragana
  # 30A0-30FF : katakana
  # FF00-FFEF : Full-width roman + half-width katakana
  # 4E00-9FAF : Common and uncommon kanji
  #
  # Non-Japanese punctuation/formatting characters commonly used in Japanese text
  # 2605-2606 : Stars
  # 2190-2195 : Arrows
  # u203B     : Weird asterisk thing
  #
  # var regex = /[\u3000-\u303F]|[\u3040-\u309F]|[\u30A0-\u30FF]|[\uFF00-\uFFEF]|[\u4E00-\u9FAF]|[\u2605-\u2606]|[\u2190-\u2195]|\u203B/g;
  # var input = "input string";
  # if(regex.test(input)) {
  #     console.log("Japanese characters found")
  # }
  # else {
  #     console.log("No Japanese characters");
  # }
  class Kanji
    attr_reader :glyph, :strokes, :radical, :meanings, :readings

    def initialize(glyph, strokes, radical)
      @glyph = glyph
      @strokes = strokes
      @radical = radical
      @meanings = []
      @readings = []
    end

    def self.find(glyph)
      query = "MATCH (k:kanji {glyph: '#{glyph}'}) RETURN k"
      response = Dokusha.graph.query(query)
      return Kanji.new(response.resultset[0][0][0]["glyph"], response.resultset[0][0][1]["strokes"], Radical.new("一", 1, "One", "いち"))
    end

    def create
      query = "CREATE (:kanji {glyph: '#{@glyph}', strokes: #{@strokes}})"
      Dokusha.graph.query(query)
    end

    def delete
      query = "MATCH(k:kanji {glyph: '#{@glyph}'}) DELETE k"
      Dokusha.graph.query(query)
    end
  end
end
