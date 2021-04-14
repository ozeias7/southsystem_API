
Dado("que eu faça requesição de leitura de todos os registros") do
begin 
     response = HTTParty.get("https://api-de-tarefas.herokuapp.com/contacts")
     log JSON.pretty_generate(JSON.parse(response.body))
     
 end
end
  
  Então("valido o código de resposta esperado") do
    expect respond_to eq 200
    log "Validando o retorno do codigo 200"
  end