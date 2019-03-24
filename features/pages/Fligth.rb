require 'capybara'
require 'site_prism'


class Flight < SitePrism::Page

        element :btn_ok, "input[name='findFlights']"
        element :lst_from, :xpath, '//select[@name="fromPort"]'
        element :lst_on, :xpath, '//select[@name="fromMonth"]'
        element :lst_month, :xpath, '//select[@name="fromDay"]'
        element :lst_arriving, :xpath, '//select[@name="toPort"]'
        element :lst_returning, :xpath, '//select[@name="toMonth"]'
        element :lst_month_returning, :xpath, '//select[@name="toDay"]'
        element :check_port, :xpath, '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[9]/td[2]/font/font/input[2]'
        element :lst_airline, :xpath, '//select[@name="airline"]'
      
        #Selecionar os dados da reserva dos voos
        def form_escolher
          lst_from.select 'London'
          lst_on.select 'December'
          lst_month.select '20'
          lst_arriving.select 'Acapulco'
          lst_returning.select 'October'
          lst_month_returning.select '21'
          check_port.click
          lst_airline.select 'Blue Skies Airlines'
        end    

        #Botão Continue
        def clicar_btn_ok(*)
          btn_ok.click
        end

end
