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
    card.rank = 'Dongerz'
    expect(card.rank).to eq('Dongerz')
  end
  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
