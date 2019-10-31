
describe "radios", :radios do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
  end

  it "seleção por ID" do
    choose("thor")
  end

  it "seleção por find e CSS Selector" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 3
  end
end
