require 'selenium-webdriver'

class SeleniumQaToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = "http://toolsqa.com/automation-practice-form"
    @firstname_field = "firstname"
    @lastname_field = "lastname"
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @firstname_field).send_keys(text)
  end

  def get_firstname
    puts @chrome_driver.find_element(:name, @firstname_field)["value"]
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @lastname_field).send_keys(text)
  end

  def get_lastname
    puts @chrome_driver.find_element(:name, @lastname_field)["value"]
  end

  def input_sex
    @chrome_driver.find_element(:id, "sex-1").click
  end

  def input_experience
    @chrome_driver.find_element(:id, "exp-3").click
  end

  def input_date(text)
    @chrome_driver.find_element(:id, "datepicker").send_keys(text)
  end

  def input_profession
    @chrome_driver.find_element(:id, "profession-1").click
  end

  def insert_profile_picture(img)
    @chrome_driver.find_element(:id, "photo").send_keys(img)
  end

  def input_auto_tool
    @chrome_driver.find_element(:id, "tool-2").click
  end

  def input_continent(text)
    @chrome_driver.find_element(:id, "continents").send_keys(text)
  end

  def input_commands(text)
    @chrome_driver.find_element(:id, "selenium_commands").send_keys(text)
    sleep 5
  end

end

testing = SeleniumQaToolsForm.new

testing.visit_practice_form
testing.input_firstname_field("Sophie")
testing.get_firstname
testing.input_lastname_field("Kenyon")
testing.get_lastname
testing.input_sex
testing.input_experience
testing.input_date("28/02/1997")
testing.input_profession
testing.insert_profile_picture("clown.jpg")
testing.input_auto_tool
testing.input_continent("Europe")
testing.input_commands("Wait Commands")
