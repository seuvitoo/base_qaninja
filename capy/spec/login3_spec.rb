describe "login com cadastro", :login3 do
  before(:each) do
    visit "/access"
  end

  it "com data de nascimento" do
    # login_form = find("#login")

    # login_form.find("input[name=username]").set "stark"
    # login_form.find("input[name=password]").set "jarvis!"

    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"
    end
    click_button "Entrar"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "cadastra-se" do
    # login_form = find("#login")

    # login_form.find("input[name=username]").set "stark"
    # login_form.find("input[name=password]").set "jarvis!"

    within("#signup") do
      find("input[name=username]").set "victor"
      find("input[name=password]").set "123456!"
    end
    click_link "Criar Conta"
    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
