require 'selenium-webdriver'

# Create a chrome WebDriver

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get("http://toolsqa.com/automation-practice-form")

chrome_driver.find_element(:name, 'firstname').displayed?

chrome_driver.find_element(:name, 'firstname').send_keys('test')

chrome_driver.find_element(:name, 'lastname').send_keys('testagain')

sleep 2
