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
  before do
    if server.env != 'UAT'
      puts "ENV MUST BE UAT FOR THIS TEST SUITE...STAPH!!!"
    else
      puts "server is #{server.env}"
    end
  end
  after do
    if server.env != 'UAT'
      puts "YOU R FUKKING UP THE LAB!!! ENV MUST BE UAT FOR THIS TEST SUITE...STAPH!!!"
    else
      puts "server is #{server.env}"
    end
  end

  it 'should be from MWDC' do
    expect(server.dc).to eq('MWDC'), "Be advised this test suite is for UAT MWDC servers only, not for #{server.env} from #{server.dc}"
  end
end
