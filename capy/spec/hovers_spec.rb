
describe "hovers", :hover do
  before(:each) do
    visit "/hovers"
  end

  it "passar o mouse em cima do blade" do
    card = find("img[alt=Blade]")
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "passar o mouse em cima do pantera negra" do
    card = find('img[alt="Pantera Negra"]')
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "passar o mouse em cima do Homem Aranha" do
    card = find('img[alt="Homem Aranha"]')
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 3
  end
end
