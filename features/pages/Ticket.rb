require 'capybara'
require 'site_prism'

class Ticket < SitePrism::Page

        element :lbl_number, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[5]/td/table/tbody/tr[1]/td/table/tbody/tr/td[1]/b/font/font/b/font[1]'
        

        def validar_ticket  
           scroll_to_element(lbl_number) 
           puts valor = lbl_number.has_text?('Flight Confirmation')
            if valor == false
                raise "failed"     
            end          
        end    

        def scroll_to_element(elem)
           page.execute_script('arguments[0].scrollIntoView();', elem)
           rescue => ex
           puts ex.message
           false
        end

end
