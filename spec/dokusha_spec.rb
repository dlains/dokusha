RSpec.describe Dokusha do
  it "has a version number" do
    expect(Dokusha::VERSION).not_to be nil
  end

  describe '#graph' do
    it 'returns a RedisGraph connection' do
      expect(Dokusha.graph).to be_a(RedisGraph)
    end
  end
  
  describe '#configure' do
    before do
      Dokusha.configure do |config|
        config.redis_options = { host: "127.0.0.1", port: 6379 }
      end
    end

    it 'returns the redis options' do
      options = Dokusha.configuration

      expect(options.redis_options).to eq({ host: "127.0.0.1", port: 6379 })
    end
  end
end
