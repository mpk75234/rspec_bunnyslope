class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
RSpec.describe Card do

  before(:example) do
    puts "I RUN BEFORE!!!"
  end
  after(:example) do
    puts "I RUN AFTER"  
  end
  let(:card) {Card.new('Ace', 'Spades')}
  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    expect(card.suit).to eq('Spades')
  end
end
