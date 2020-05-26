Dado("Que para atender o bom funcionamento do sistema de cadastro dos {string} diretores de cinema") do |search_director|
  visit:"https://www.google.com.br/"
  page.driver.browser.manage.window.maximize
  @google.googler(search_director)
  @director = @google.searched.text
  puts @director
  
  puts "\nRESULTATADO APROXIMADO: #{@google.results_stats.text}\n"
  expect(@director).to include search_director
  screenshot(search_director)

end

Quando("eu tenho os dados como data {string}  dos mesmos com e a {string} do filme que eles costumam dirigir") do |nascimento, categoria|
  expect(@director).to include nascimento
end

Quando("se ele é {string} ou não") do |falecido|
   if falecido == "SIM"
    expect(@director).to include "Falecimento"
    puts "\n Falecido"
   else puts "\n Vivo"
   end
end


Então("eu irei cadastralos em minha base, assim como registrar seus portifolios e evidenciá-los") do
  base = File.new("./report/base.txt", "a+")
  base.puts  "Dados sobre diretor e filmes: #{@director}"
  base.close
end


Dado("que eu como Q.A preciso Validar a api solicitada") do
  puts "Iniciando Api"
  @api_test = @api.api_simple
end

Quando("eu tenho o contrato correto para mesma") do
  expect(@api_test.response.code).to eql "200"
end

Então("eu validarei se ela me retornará os campo userId {string}") do |userId|
  puts @api_test["userId"]
  expect(@api_test["userId"]).to eql userId.to_i
end

Então("o campo id {string}") do |id|
  puts @api_test["id"]
  expect(@api_test["id"]).to eql id.to_i
end

Então("o campo Tile {string}") do |title|
  puts @api_test["title"]
  expect(@api_test["title"]).to eql title 
end

Então("o campo Completed {string}") do |completed|
  puts @api_test["completed"]
  expect(@api_test["completed"]).to eql false
end