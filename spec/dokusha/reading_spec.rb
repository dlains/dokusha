require 'spec_helper'

module Dokusha
  RSpec.describe Reading do
    let(:subject) { Reading.new('じょう') }

    it 'should have a text attribute' do
      expect(subject).to respond_to(:text)
    end

    it 'should have a type attribute' do
      expect(subject).to respond_to(:type)
    end
  end
end
