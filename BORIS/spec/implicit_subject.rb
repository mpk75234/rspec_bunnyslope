#implicit subject means whatever class your RSpec.descdribe
# is describing, will already have a subject instance created automagically
RSpec.describe Hash do
  it 'should be the empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(20)  
  end
end
