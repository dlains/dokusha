require 'spec_helper'

module Dokusha
  RSpec.describe Word do
    let(:subject) { Word.new('猫', 'ねこ', [], 'noun', [], true, 5, 15) }

    it 'should have a text attribute' do
      expect(subject).to respond_to(:text)
    end

    it 'should have a reading attribute' do
      expect(subject).to respond_to(:reading)
    end

    it 'should have a meanings attribute' do
      expect(subject).to respond_to(:meanings)
    end

    it 'should have a part_of_speech attribute' do
      expect(subject).to respond_to(:part_of_speech)
    end

    it 'should have a kanji_used attribute' do
      expect(subject).to respond_to(:kanji_used)
    end

    it 'should have a common attribute' do
      expect(subject).to respond_to(:common)
    end

    it 'should have a jlpt_level attribute' do
      expect(subject).to respond_to(:jlpt_level)
    end

    it 'should have a wanikani_level attribute' do
      expect(subject).to respond_to(:wanikani_level)
    end
  end
end
