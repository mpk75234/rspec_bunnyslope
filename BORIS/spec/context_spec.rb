RSpec.describe 'multiple describe blocks' do
  #this before runs before each nexsted example
  before do
     puts "BEFORE"
  end
  describe 'is even?' do
   it 'should be even' do
     expect(4.even?).to eq(true)
   end
  end
  describe 'is odd?' do
    it 'should be odd' do
      expect(3.odd?).to eq(false)
    end
  end
end
