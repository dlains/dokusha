require 'spec_helper'

module Dokusha
  RSpec.describe Configuration do
    describe '#redis_options' do
      it 'should default to localhost:6379' do
        expect(Configuration.new.redis_options).to eq({ host: '127.0.0.1', port: 6379 })
      end
    end

    describe '#redis_options=' do
      it 'should set new redis options' do
        config = Configuration.new
        config.redis_options = { host: "new.host.com", port: 1234 }
        expect(config.redis_options).to eq({ host: "new.host.com", port: 1234 })
      end
    end
  end
end
