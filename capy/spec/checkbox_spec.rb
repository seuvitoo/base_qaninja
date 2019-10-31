
describe "checkbok", :check do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "marcando uma opção" do
    check("thor")
  end

  it "desmarcando uma opção" do
    uncheck("antman")
  end

  it "marcando com find" do
    find("input[value=cap]").set(true)
  end
  it "desmarcando com find" do
    find("input[value=guardians]").set(false)
  end

  it "verificando se algum esta marcado" do
    expect(find("input[value=guardians]")).to be_checked
  end

  it "verificando se algum esta desmarcado" do
    expect(find("input[value=black-panther]")).not_to be_checked
  end

  after(:each) do
    sleep 3
  end
end
