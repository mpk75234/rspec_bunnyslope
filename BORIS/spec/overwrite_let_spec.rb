class Prospect
  attr_accessor :rank
  def initialize(rank = 'Hangaround')
    @rank = rank
  end
end
RSpec.describe Prospect do
  before(:example) do
    if prospect.rank == 'Hangaround'
       puts "get me a beer hangaround, and some blue magic!"
   else
     puts "berp?"
   end
  end
  after(:example) do
   if prospect.rank == 'Member'
     puts "Welcome to Hells Angels Oakland brother"
   end  
  end

  let(:prospect) { Prospect.new('Prospect')}
  it 'should have rank of Prospect' do
    expect(prospect.rank).to eq('Prospect')
  end
  context 'it is fully-patched now' do
     let(:prospect) {Prospect.new('Member')}
     it 'has full patch membership' do
        expect(prospect.rank).to eq('Member')
     end
  end
end
