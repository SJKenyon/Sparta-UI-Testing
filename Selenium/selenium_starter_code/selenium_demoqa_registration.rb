require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD = "name_3_firstname" # id
  LAST_NAME_FIELD = "name_3_lastname" # id
  MARITAL_STATUS = ["single", "married", "divorced"] # values
  HOBBY_STATUS = ["dance", "reading", "cricket"] # values
  COUNTRY_DROP_DOWN_LIST = "dropdown_7" # id
  DOB_MONTH_DROPDOWN_LIST = "mm_date_8" # id
  DOB_DAY_DROPDOWN_LIST = "dd_date_8" # id
  DOB_YEAR_DROPDOWN_LIST = "yy_date_8" # id
  PHONE_NUMBER_FIELDS = "phone_9" # id
  USERNAME_FIELD = "username" # id
  EMAIL_FIELD = "email_1" # id
  PROFILE_PICTURE_BUTTON = "profile_pic_10" # id
  DESCRIPTION_FIELD = "description" # id
  PASSWORD_FIELD = "password_2" # id
  CONFIRM_PASSWORD_FIELD = "confirm_password_password_2" # id
  SUBMIT_BUTTON = "pie_sibmit" # name
  REGISTRATION_CONFIRMATION = #class

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management - Difficulty Easy

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)["value"]
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
  end

  # last name field management - Difficulty Easy

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)["value"]
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
  end

  # Marital option management - Difficulty Medium

  def select_marital_option(marital_status)
    # Consider something like a case statement and check the selenium selected? method
    @chrome_driver.find_element(:xpath, "//input[@value='#{marital_status}']").click
  end

  # hobby option management - Difficulty Medium

  def select_hobby_option(hobby)
    # Consider something like a case statement and check the selenium selected? method
    @chrome_driver.find_element(:xpath, "//input[@value='#{hobby}']").click
  end

  # Select Country - Difficulty HARD

  def get_selected_country
    @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)["value"]
  end

  def country_dropdown_list_select(country)
    @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST).send_keys(country)
  end

  # DOB management - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def dob_month_list_select(month_value)
    @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST).send_keys(month_value)
  end

  def dob_day_list_select(day_value)
    @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST).send_keys(day_value)
  end

  def dob_year_list_select(year_value)
    @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST).send_keys(year_value)
  end

  def get_DOB_month
    @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST)["value"]
  end

  def get_DOB_day
    @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST)["value"]
  end

  def get_DOB_year
    @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST)["value"]
  end


  # Phone number field management - Difficulty Easy

  def set_phone_number_field(phone_number)
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS).send_keys(phone_number)
  end

  def get_phone_number_field_value
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS)["value"]
  end

  #  username field management - Difficulty Easy

  def set_user_name_field(user_name)
    @chrome_driver.find_element(:id, USERNAME_FIELD).send_keys(user_name)
  end

  def get_user_name_field_value
    @chrome_driver.find_element(:id, USERNAME_FIELD)["value"]
  end

  # Email field management - Difficulty Easy

  def set_email_field(email)
    @chrome_driver.find_element(:id, EMAIL_FIELD).send_keys(email)
  end

  def get_email_field_value
    @chrome_driver.find_element(:id, EMAIL_FIELD)["value"]
  end

  # about yourself / description field - Difficulty Easy

  def set_about_yourself_field(details)
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD).send_keys(details)
  end

  def get_about_yourself_value
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD)["value"]
  end

  # Password management - Difficulty Easy

  def set_password_field(password)
    @chrome_driver.find_element(:id, PASSWORD_FIELD).send_keys(password)
  end

  def get_password_value
    @chrome_driver.find_element(:id, PASSWORD_FIELD)["value"]
  end

  def set_confirmation_password_field(password)
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD).send_keys(password)
  end

  def get_confirmation_password_value
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD)["value"]
  end

  # registration confirmation - Difficulty Easy

  def click_submit
  end

  def check_registration_successful
  end
end
