describe "caixa de seleção", :dropdown do
  it "Item especifico simples" do
    visit "/dropdown"

    select("Loki", from: "dropdown")

    sleep 3 #temporario
  end

  it "selecionando item especifico com find" do
    visit "/dropdown"

    armazena = find(".avenger-list")
    armazena.find("option", text: "Tony Stark").select_option

  end

  it "qualquer item", :sample do
    
    visit "/dropdown"

    armazena = find(".avenger-list")

    puts armazena.all("option").sample.select_option.text
    
  end
end
