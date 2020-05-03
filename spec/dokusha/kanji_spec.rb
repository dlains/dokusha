require 'spec_helper'

module Dokusha
  RSpec.describe Kanji do
    let(:subject) { Dokusha::Kanji.new('上', 3, Radical.new('⼀', 1, 'one, horizontal stroke', 'いち')) }

    it 'should have a glyph attribute' do
      expect(subject).to respond_to(:glyph)
    end

    it 'should have a strokes attribute' do
      expect(subject).to respond_to(:strokes)
    end

    it 'should have a radical attribut' do
      expect(subject).to respond_to(:radical)
    end

    it 'should have a meanings attribute' do
      expect(subject).to respond_to(:meanings)
    end

    it 'should have a readings attribute' do
      expect(subject).to respond_to(:readings)
    end

    describe '#glyph' do
      it 'should have a kanji character' do
        expect(subject.glyph).to eq('上')
      end
    end
  end
end
