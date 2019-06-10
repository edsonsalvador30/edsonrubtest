class Metodos
  def campo_preencher(path, valor)
    driver.find_element(xpath: path).send_keys(valor)
  end

  def elemento_clicado(path)
    driver.find_element(xpath: path).click
  end
end