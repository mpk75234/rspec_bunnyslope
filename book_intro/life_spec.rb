class Life
  attr_reader :description
  def initialize(description)
    @description = description
  end
end
RSpec.describe Life do
  let (:life) {Life.new('hard')}

  it "is hard" do
   expect(life.description).to eq("hard")
  end
end
