#validate UAT is the server.env

RSpec.describe 'UAT server validation' do
  it 'should be from MWDC' do
    expect(server.dc).to eq('MWDC')
  end
end
