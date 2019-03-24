require 'capybara'
require 'site_prism'


class Login < SitePrism::Page

       
        element :txt_username, "input[name='userName']"
        element :txt_password, "input[name='password']"
        element :btn_submit, "input[name='login']"
      

        def submit(*)
          btn_submit.click
        end

        def form_preencher(login, senha)
          txt_username.set login
          txt_password.set senha
        end
end        