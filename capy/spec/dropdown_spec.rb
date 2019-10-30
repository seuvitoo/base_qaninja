describe "caixa de seleção", :dropdown do
  it "Item especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"

    select("Loki", from: "dropdown")

    sleep 3 #temporario
  end

  it "selecionando item especifico com find" :dropdown do
  
end

end
