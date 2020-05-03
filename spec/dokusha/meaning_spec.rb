require 'spec_helper'

module Dokusha
  RSpec.describe Meaning do
    let(:subject) { Dokusha::Meaning.new('Above') }

    it 'should have a text attribute' do
      expect(subject).to respond_to(:text)
    end

    it 'should have a primary attribute' do
      expect(subject).to respond_to(:primary)
    end

    describe '#text' do
      it 'should return the meaning text' do
        expect(subject.text).to eq('Above')
      end
    end

    describe '#primary?' do
      it 'should return true if the meaning is the primary meaning' do
        expect(subject.primary?).to be_truthy
      end

      it 'should return false if the meaning is not the primary meaning' do
        meaning = Dokusha::Meaning.new('Up', false)
        expect(meaning.primary?).to be_falsy
      end
    end
  end
end
