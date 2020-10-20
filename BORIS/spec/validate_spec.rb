#validate UAT is the server.env
class Server
  attr_accessor :env,:dc
  def initialize(env, dc)
    @env = env
    @dc = dc
  end
end

RSpec.describe 'UAT server validation' do
  let(:server) { Server.new('COB', 'SWDC')}
  before(:example) do
    if server.env != 'UAT'
      puts "ENV MUST BE UAT FOR THIS TEST SUITE..."
    else
      puts "server is #{server.env}"
    end
  end
  after(:example) do
    if server.env != 'UAT'
      puts "MUST BE UAT FOR THIS TEST SUITE..."
    else
      puts "server is #{server.env}"
    end
  end

  it 'should be from MWDC' do
    expect(server.dc).to eq('MWDC'), "Be advised this test suite is for UAT MWDC servers only, not for #{server.env} from #{server.dc}"
  end
end
