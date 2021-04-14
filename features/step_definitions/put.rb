Dado("que eu faça requesição eu altero o registro") do      
    
    begin 
    response = HTTParty.put("https://api-de-tarefas.herokuapp.com/contacts/2582",
    :body => {
          "id": 2582,
          "name":"Ozeiasss10",
          "last_name":"Silva10",
          "email":"ozeias1520@gmail.com",
          "age":"28",
          "phone":"21984759575",
          "address":"Rua dois",
          "state":"Minas Gerais",
          "city":"Belo Horizonte"
             
      }.to_json,
      :headers => {'Content-Type' => 'application/json'})
      log response.code
    end
end                                                                             
                                                                                  
  Então("valido o código de alteração") do                                        
    expect respond_to eq 200
    log "Validando o retorno do codigo 422" 
    log respond_to
end                                                                             
                                                                        
  
