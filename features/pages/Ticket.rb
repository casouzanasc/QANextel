require 'capybara'
require 'site_prism'

class Ticket < SitePrism::Page

        element :lbl_number, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[5]/td/table/tbody/tr[1]/td/table/tbody/tr/td[1]/b/font/font/b/font[1]'
        
        #Verificar se o bilhete foi emitido 
        def validar_ticket  
             
           puts valor = lbl_number.has_text?('Flight Confirmation')
            if valor == false
                raise "failed"     
            end  
            sleep 10        
        end    


end
