describe "id dinamico", :id_mud do
  before(:each) do
    visit "/access"
  end

  it "cadastro" do
    find("input[id$=wtUsernameInput").set "Victor" # $ indica busca por final da classe
    find("input[id^=PasswordInput").set "123456" # ^ indica busca por inicio da classe
    find("a[id*=GetStartedButton").click # * indica busca que contanha o intem na classe

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
