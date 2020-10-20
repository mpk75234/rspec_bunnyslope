class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
RSpec.describe Card do
    let(:card) {Card.new('Ace', 'Spades')}
  it 'has a mutable rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'King'
    expect(card.rank).to eq('King')
  end
  it 'has a suit' do
    suit = 'Spades'
    expect(card.suit).to eq(suit),"Ehhhh. I expected #{card.suit} but... I up and got #{suit}"
  end
end
