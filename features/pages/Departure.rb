require 'capybara'
require 'site_prism'

class Departure < SitePrism::Page

        element :check_dept, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table[1]/tbody/tr[5]/td[1]/input'
        element :check_ret, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table[2]/tbody/tr[5]/td[1]/input'
        element :btn_continue, "input[name='reserveFlights']"

        def form_selecionar  
          check_dept.click
          check_ret.click
        end    

        def clicar_btn_continue(*)
          btn_continue.click
        end

end
