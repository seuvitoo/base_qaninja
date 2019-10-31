
describe "upload", :upload do
  before(:each) do
    visit "/upload"

    @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @imagem = Dir.pwd + "/spec/fixtures/google.png"
  end

  it "upload com arquivo texto" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    divarq = (find("#uploaded-file"))
    expect(divarq.text).to eql "arquivo.txt"
  end

  it "upload com imagem", :upload_imagem do
    attach_file("file-upload", @imagem)
    click_button "Upload"
    img = (find("#new-image"))
    expect(img[:src]).to include "/uploads/google.png"
  end

  after(:each) do
    sleep 3
  end
end
