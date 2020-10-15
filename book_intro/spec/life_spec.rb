class Life
  attr_reader :description,:magicword
  def initialize(description,magicword)
    @description = description
    @magicword = magicword
  end
end
RSpec.describe Life do
  let (:life) {Life.new('hard','Friday')}

  it "is hard" do
   expect(life.description).to eq("hard")
  end
  it "has a magic word!" do
   expect(life.magicword).to eq("Friday")
  end
end
