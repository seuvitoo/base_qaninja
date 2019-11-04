describe "alterando janelas", :wd do
  before(:each) do
    visit "/windows"
  end

  it "Nova Janela" do
    novaJanela = window_opened_by { click_link "Clique aqui" }

    within_window -> { page.title == "Nova Janela" } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
    end

    expect(novaJanela.closed?).to be false
  end
end
