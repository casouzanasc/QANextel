require 'capybara'
require 'site_prism'

class Summary < SitePrism::Page

        
        elements :table_dados_voo, "form[class= 'AVAST_PAM_nonloginform']"
        element :txt_first, "input[name='passFirst0']"
        element :txt_lastname, "input[name='passLast0']"
        element :txt_number, "input[name='creditnumber']"
        element :btn_confirmar, "input[name='buyFlights']"
        element :txt_dep, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[2]/td/table/tbody/tr[3]/td[1]/font/b'
        element :txt_ret, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[2]/td/table/tbody/tr[6]/td[1]/font/font/font[1]/b'
      

        def validar_dados 
          puts valor1 = txt_dep.has_text?('Blue Skies Airlines 361')
          puts valor2 = txt_ret.has_text?('Blue Skies Airlines 631')
          if valor1 == false or valor2 == false
            valor = false
            raise "Dados divergentes"
          end   
          return valor = true
        end 
        
        def preencher_dados(first, last, number)
            txt_first.set first
            txt_lastname.set last
            txt_number.set number  
        end 

        def clicar_btn_confirmar(*)
          btn_confirmar.click
        end

end
