#validate UAT is the server.env
class Server
  attr_accessor :env,:dc
  def initialize(env, dc)
    @env = env
    @dc = dc
  end
end

RSpec.describe 'UAT server validation' do
  let(:server) { Server.new('UAT', 'MWDC')}
  before(:context) do
    puts "I run before each context block"
  end
  before(:example) do
    if server.env != 'UAT'
      puts "FAIL ABORT NOT UAT..."
    else
      puts "PASS server is #{server.env}"
    end
  end
  after(:example) do
    if server.env != 'UAT'
      puts "FAIL ABORT NOT UAT..."
    else
      puts "PASS server is #{server.env}"
    end
  end

  it 'should be from MWDC' do
    expect(server.dc).to eq('MWDC'), "FAIL Be advised this test suite is for UAT MWDC servers only, not for #{server.env} from #{server.dc}"
  end
  context 'PROD' do
    it 'should run in UAT' do
    #server.env = 'PROD'
    expect(server.env).to eq('UAT'),"FAIL should be UAT from MWDC not #{server.env} from #{server.dc}"
  end
  end
end
