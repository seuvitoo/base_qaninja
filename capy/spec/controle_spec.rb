
describe "controle", :controle do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "habilitando o campo", :hab do

    #quando tem a propriedade disabled true o campo está desabilitado
    # quando não tem a propriedade o campo está desabilitado

    res = page.has_field? "movie", disabled: true
    puts res

    click_button "Habilita"
   
    res = page.has_field? "movie", disabled: false
    puts res
  end

  after(:each) do
    sleep 3
  end
end
