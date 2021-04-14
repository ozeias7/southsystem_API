Dado("que eu realizo a requisção de exclusão") do
    begin 
        response = HTTParty.delete("https://api-de-tarefas.herokuapp.com/contacts/2530")
        log response.code
        
    end
   end


  
  Então("valido o código de resposta de execlusão") do
    expect respond_to eq 204
    log "Validando o retorno do codigo 204" 
    log respond_to  
  end