require 'capybara'

class Login < SitePrism::Page  
        element :txt_username, "input[name='userName']"
        element :txt_password, "input[name='password']"
        element :btn_submit, "input[name='login']"
      
        #Preencher os dados do Login 
        def form_preencher(login, senha)
          txt_username.set login
          txt_password.set senha
        end
        
        #Clicar botão Sign-in
        def submit(*)
          btn_submit.click
        end      
end        