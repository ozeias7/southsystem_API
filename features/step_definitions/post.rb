Dado("que eu os usuários") do
  begin 
       response = HTTParty.post("https://api-de-tarefas.herokuapp.com/contacts",
      :body => {
        "name":"Ozeiasss",
        "last_name":"silva",
        "email":"teste288@gmail.com",
        "age":"28",
        "phone":"21984759575",
        "address":"Rua dois",
        "state":"São Paulo",
        "city":"Baarueri"
                 
      }.to_json,
      :headers => {'Content-Type' => 'application/json'})
      log response.code
    end
 end
  
  Então("valido o código de resposta esperadoo") do
    expect respond_to eq 201
    log "Validando o retorno do codigo 201"
  end
