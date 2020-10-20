RSpec.describe 'nested hooks' do
  before(:context) do
    puts "OUTER before context"
  end
  before(:example) do
    puts "OUTER before example"
  end
  after(:context) do
    puts "OUTER after context"
  end
  after(:example) do
    puts "OUTER after example"
  end
  it 'does basic math' do
    expect(82-1).to eq(81)
  end
  describe 'it does more basic math' do
    before(:context) do
      puts "INNER before context"
    end
    before(:example) do
      puts "INNER before example"
    end
    after(:example) do
      puts "INNER after example"
    end
    after(:context) do
      puts "INNER after context"
    end
    it 'should be 81' do
      expect(84-3).to eq(81)
    end
  end
  context 'yet more basic math' do
    before(:context) do
      puts "SECOND INNER before context"
    end
    after(:context) do
      puts "SECOND INNER after context"
    end
    before(:example) do
      puts "SECOND INNER before example"
    end
    after(:example) do
      puts "SECOND INNER after example"
    end
    it 'should be also 81' do
      expect(80+1).to eq(81)
    end
    it 'is always odd' do
     expect(81.odd?).to eq(true)
    end
  end
end
#Look at outer context as big bread for example sandich, then each outer before example will be bread for each inner example
