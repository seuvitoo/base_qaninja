require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL

  config.before(:example) do
    #page.current_window.resize_to(1280, 800)
  end

  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, "").tr(" ", "_")
    #tirando os acentos e mudando espaços por _
    page.save_screenshot("log/" + nome + ".png")
  end
end

Capybara.configure do |config|
  #alterar configuração conforme navegador deve ser aberto
  #config.default_driver = :selenium_chrome
  config.default_driver = :selenium_chrome_headless

  #usado para o navegador Firefox
  #config.default_driver = :selenium

  config.default_max_wait_time = 5
  config.app_host = "https://training-wheels-protocol.herokuapp.com"
  #config.app_host = "httpps://www.google.com.br"
end
