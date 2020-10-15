class Card
  attr_reader :rank,:suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
RSpec.describe Card do
  before(:example) do
    @card = Card.new('Eight', 'Spades')
  end
  it 'has a rank' do
    expect(@card.rank).to eq('Eight')
  end
  it 'has a suit' do
    expect(@card.suit).to eq('Spades')  
  end
end