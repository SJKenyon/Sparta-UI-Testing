require "watir"
require_relative "generator/generator"

driver  = Selenium::WebDriver.for :firefox
browser = Watir::Browser.new(driver)

browser.driver.manage.timeouts.page_load = 5
browser.window.resize_to(1000, 800)
browser.window.move_to(200, 20)

@info = Generator.new.random_form_values
@postcodes = Generator.new.random_postcode_generator

browser.goto("http://www.bbc.co.uk")
browser.link(:id => "idcta-link").wait_until_present.click
browser.link(:class => "link link--primary").wait_until_present.click
ages = browser.links(:class => "button")
ages[1].wait_until_present.click
browser.input(:id => "day-input").send_keys("28")
browser.input(:id => "month-input").send_keys("02")
browser.input(:id => "year-input").send_keys("1997")
browser.button(:id => "submit-button").wait_until_present.click
@email = @info.email
browser.input(:id => "user-identifier-input").send_keys(@email)
@password = @info.password
browser.input(:id => "password-input").send_keys(@password)
@postcode = @postcodes.postcode
browser.input(:id => "postcode-input").send_keys(@postcode)
browser.select_list(:id => "gender-input").select("Female")
no = browser.divs(:class => "button__text-wrapper")
no[1].click
browser.button(:id => "submit-button").click

browser.quit
