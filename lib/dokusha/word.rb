module Dokusha
  class Word
    attr_reader :text, :reading, :meanings, :part_of_speech
    attr_reader :kanji_used, :common, :jlpt_level, :wanikani_level

    def initialize(text, reading, meanings, part_of_speech, kanji_used, common, jlpt_level, wanikani_level)
      @text = text
      @reading = reading
      @meanings = meanings
      @part_of_speech = part_of_speech
      @kanji_used = kanji_used
      @common = common
      @jlpt_level = jlpt_level
      @wanikani_level = wanikani_level
    end
  end
end
