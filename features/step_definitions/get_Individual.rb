
      Dado("que eu faça requesição de leitura de um registro") do                        
        begin 
            response = HTTParty.get("https://api-de-tarefas.herokuapp.com/contacts/2582")
            log JSON.pretty_generate(JSON.parse(response.body))
            
        end
       end 
                                                                                     
                                                                                         
      Então("valido o código de um registro") do                                         

        expect respond_to eq 200
        log "Validando o retorno do codigo 200"
    end                                                                                
                                                                                         