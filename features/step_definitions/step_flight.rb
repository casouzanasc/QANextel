# encoding: utf-8

Dado("eu esteja na pagina") do                                                  
    @page = Login.new
    @page.visit 'http://newtours.demoaut.com/'  
    puts @page.title
  end                                                                             
                                                                                  
  Quando("eu preencher os campos") do |table|                                     
    data = table.rows_hash
    @page.form_preencher(data['login'], data['senha'])   
  end 
  
  Entao("confirmo os dados através do botão {string}") do |string|             
    @page.submit
  end                                                                          
                                                                               
  Quando("eu escolher os detalhes do voo") do                                  
    @pageflight = Flight.new
  end   
  
  Entao("eu clico o botao para continuar") do
    @pageflight.clicar_btn_ok
  end                                                                               
  
  Quando("eu selecionar partida e retorno do voo") do
    @pagedept = Departure.new
    @pagedept.form_selecionar
  end                                                                          
                                                                                  
  Entao("confirmo para continuar o procedimento") do   
    @pagedept.clicar_btn_continue                           
  end   
  
  Quando("validar todas as informações dos voos") do                          
    @pagesummary = Summary.new
    @retorno = @pagesummary.validar_dados 
  end                                                                         
                                                                              
  Entao("preencha os dados") do |table|
    if @retorno == true 
      data = table.rows_hash
      @pagesummary.preencher_dados(data['first'], data['last'], data['number'])
    end
  end                                                                       
                                                                              
  Entao("confirma o botao") do                                                
    @pagesummary.clicar_btn_confirmar
  end                                  
  
  Quando("eu estou na pagina de confirmacao") do
    @pagenumber = Ticket.new 
  end
  
  Entao("eu valido o numero da confirmacao do voo") do
    @pagenumber.validar_ticket
  end