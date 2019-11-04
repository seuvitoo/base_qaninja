describe "key", :key do
  before(:each) do
    visit "/key_presses"
  end

  it "enviando teclas" do
    find("#campo-id").send_keys :space
    sleep 5

    expect(page).to have_content "You entered: SPACE"
  end

  it "enviando teclas" do
    find("#campo-id").send_keys :tab
    sleep 5

    expect(page).to have_content "You entered: TAB"
  end

  it "enviando teclas" do
    find("#campo-id").send_keys :control
    sleep 5

    expect(page).to have_content "You entered: CONTROL"
  end

  it "ARRAY DE SIMBOLOS", :simbolos do
    teclas = %i[tab escape space enter shift control alt]

    teclas.each do |t|
      find("#campo-id").send_keys t
      expect(page).to have_content "You entered: " + t.to_s.upcase
    end
  end

  it "ARRAY DE letras", :letras do
    teclas = %w[a s d f g]

    teclas.each do |t|
      find("#campo-id").send_keys t
      expect(page).to have_content "You entered: " + t.to_s.upcase
      sleep 2
    end
  end


  
end  
