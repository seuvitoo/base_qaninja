describe "alertas javascript", :alertas do
  before(:each) do
    visit "/javascript_alerts"
  end

  it "Alerta" do
    click_button "Alerta"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Isto é uma mensagem de alerta"
    sleep 5
  end

  it "Confirma" do
    click_button "Confirma"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
    sleep 5
  end

  it "Não Confirma" do
    click_button "Alerta"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
    sleep 5
  end

  it "accept Prompt", :accept do
    accept_prompt(with: "Victor") do
      click_button "Prompt"
      sleep 2
    end
    expect(page).to have_content "Olá, Victor"
    sleep 5
  end

  it "dismmiss Prompt", :dismiss do
    click_button "Prompt"
    dismiss_prompt
    expect(page).to have_content "Olá, null"
    sleep 5
  end
end
