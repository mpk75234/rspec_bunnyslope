#implicit subject means whatever class your RSpec.descdribe
# is describing, will already have a subject instance created automagically
RSpec.describe Hash do
  after(:example) do
    puts "#{subject[:club]}"
  end
  it 'should be the empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
  end
  it 'should have a length of 1' do
    subject[:club] = 'Hells Angels'
    expect(subject.length).to eq(1)
  end
end
