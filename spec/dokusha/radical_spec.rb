require 'spec_helper'

module Dokusha
  RSpec.describe Radical do
    let(:subject) { Radical.new('⼀', 1, 'one, horizontal stroke', 'いち') }

    it 'should have a glyph attribute' do
      expect(subject).to respond_to(:glyph)
    end

    it 'should have a strokes attribute' do
      expect(subject).to respond_to(:strokes)
    end

    it 'should have a meaning attribute' do
      expect(subject).to respond_to(:meaning)
    end

    it 'should have a reading attribute' do
      expect(subject).to respond_to(:reading)
    end

    it 'should have a variant_of attribute' do
      expect(subject).to respond_to(:variant_of)
    end
  end
end
