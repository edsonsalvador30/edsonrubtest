require "selenium-webdriver"

Selenium::WebDriver::Chrome.driver_path ="../chromedriver.exe"

driver = Selenium::WebDriver.for :chrome

# Conjunto de Comandos Selenium para atender a demanda, seguindo o fluxo Feliz para posteriormente ser refatorado

#def clique(caminho)
#find_element(xpath: caminho).click
#end

#def escreve(cam, valor)
#  find_element(xpath: cam).send_keys(valor)
#end


begin

  # Fase 1 da Prova - Cadastrando novo User
  driver.navigate.to "https://www.centauro.com.br"

  driver.manage.window.maximize

  driver.find_element(xpath: "//header[@id='new-main-header']//a[contains(text(),'Entre ou Cadastre-se')]").click

  driver.find_element(xpath: "//input[@id='input-type-1']").send_keys("edsbahssa@mailinator.com")

  driver.manage.timeouts.implicit_wait = 12

  driver.find_element(xpath: "//span[contains(text(),'Não, sou um novo cliente.')]").click

  driver.find_element(xpath: "//input[@id='input-type-3']").click

  driver.find_element(xpath: "//input[@id='input-type-3']").send_keys("40040-150")

  driver.find_element(xpath: "//input[@id='btn_cadastrar']").click

  driver.manage.timeouts.implicit_wait = 45

  # Fase 1.2 da Prova - Preenchendo os campos de Cadastro
  driver.find_element(xpath: "//input[@id='fisica-nome']").send_keys("Teste1")

  driver.find_element(xpath: "//input[@id='fisica-sobrenome']").send_keys("Bahia")

  driver.find_element(xpath: "//input[@id='cpf-nregister']").click

  driver.find_element(xpath: "//input[@id='cpf-nregister']").send_keys("310.119.781-30")

  driver.find_element(xpath: "//input[@id='date-nregister']").send_keys("22/05/1995")

  # Selecionar o Genero
  driver.find_element(xpath: "//option[contains(text(),'Masculino')]").click

  driver.find_element(xpath: "//input[@id='fisica-telefone-fixo-ddd']").send_keys("11")

  driver.find_element(xpath: "//input[@id='fisica-telefone-fixo']").send_keys("3344-1144")

  driver.find_element(xpath: "//input[@id='fisica-telefone-adicional-ddd']").send_keys("11")

  driver.find_element(xpath: "//input[@id='fisica-telefone-celular']").send_keys("99211-3344")

  driver.find_element(xpath: "//input[@id='fisica-senha']").send_keys("@Salvador1")

  driver.find_element(xpath: "//div[@class='tab-nregister-1']//input[@placeholder='Confirme sua Senha*']").send_keys("@Salvador1")

  driver.find_element(xpath: "//fieldset[@id='fisica-endereco']//input[@placeholder='Número*']").click

  driver.find_element(xpath: "//fieldset[@id='fisica-endereco']//input[@placeholder='Número*']").send_keys("32")

  driver.find_element(xpath: "//fieldset[@id='fisica-endereco']//input[@placeholder='Bairro*']").click

  # Campos de Esporte e Time (Selects)

  driver.find_element(xpath: "//div[@class='fselect-nregister-esporte']").click

  driver.find_element(xpath: "//div[@class='tab-nregister-1']//span[contains(text(),'Beach soccer')]").click

  driver.find_element(xpath: "//div[@class='fselect-nregister-time mleft10-nregister']").click

  driver.find_element(xpath: "//div[@class='tab-nregister-1']//span[contains(text(),'Bahia')]").click

  driver.find_element(xpath: "//button[@id='bt-submit-fisica']").click


  # Fase 2 da Prova - Alterar Senha
  driver.find_element(xpath: "//header[@id='new-main-header']//div[@id='target-my-account']//a[contains(text(),'Meus pedidos')]").click

  driver.find_element(xpath: "//a[contains(text(),'Alterar senha')]").click

  driver.find_element(xpath: "//input[@id='fisica-senha']").send_keys("@Salvador1")
  driver.find_element(xpath: "//input[@id='nova-senha-fisica']").send_keys("@bahia21")
  driver.find_element(xpath: "//input[@id='confirmar-nova-senha-fisica']").send_keys("@bahia21")

  driver.find_element(xpath: "//button[@class='form-submit large']").click

  driver.manage.timeouts.implicit_wait = 60

  # Fase 3 - Realizando Logout e autenticando com a Nova Senha informada em Fase 2

  driver.find_element(xpath: "//header[@id='new-main-header']//a[@class='user-tag'][contains(text(),'Olá, Teste')]").click

  driver.find_element(xpath: "//header[@id='new-main-header']//a[contains(text(),'Sair')]").click

  driver.manage.timeouts.implicit_wait = 30

  driver.find_element(xpath: "//header[@id='new-main-header']//a[contains(text(),'Entre ou Cadastre-se')]").click

  driver.find_element(xpath: "//input[@id='input-type-1']").send_keys("edsbahssa@mailinator.com")

  driver.find_element(xpath: "//input[@id='optYesclient']").click

  driver.find_element(xpath: "//input[@id='input-type-4']").send_keys("@bahia21")

  driver.find_element(xpath: "//input[@id='btn_Entrar']").click

  driver.manage.timeouts.implicit_wait = 30

end