
describe "select2", :single do
  before(:each) do
    visit "/apps/select2/single.html"
  end
  it "selecionar um ator" do
    find(".select2-selection--single").click
    sleep 1
    find(".select2-results__option", text: "Adam Sandler").click
    sleep 5

    click_button "Liga/Desliga"
    sleep 5
  end

  it "busca e clicar no ator" do
    find(".select2-selection--single").click
    find(".select2-search__field").set "Chris Rock"

    find(".select2-results__option").click
    sleep 5
  end
end

describe "select2M", :multi do
  before(:each) do
    visit "/apps/select2/multi.html"
  end

  it "selecionando dois atores" do
    find(".select2-selection__rendered").set "Jim Carey"
    find(".select2-selection--multiple")
    sleep 5
  end
end
