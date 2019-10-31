
describe "Drag and Drop", :drag do
  before(:each) do
    visit "/drag_and_drop"
  end

  it "homem aranha pertence ao time do stark" do
    stark = find(".team-stark .column")
    cap = find(".team-cap .column")
    spiderman = find("img[alt$=Aranha]")
    spiderman.drag_to stark
    expect(stark).to have_css ("img[alt$=Aranha]")
    expect(cap).not_to have_css ("img[alt$=Boi]")
  end

  it "verificando se homem aranha não está no time do stark" do
    stark = find(".team-stark .column")
    expect(stark).not_to have_css "img[alt$=Aranha]"
  end

  after(:each) do
  end
end
