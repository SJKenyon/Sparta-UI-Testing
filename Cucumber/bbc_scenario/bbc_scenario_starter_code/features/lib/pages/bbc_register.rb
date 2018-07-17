require 'capybara/dsl'

class BbcRegister
  include Capybara::DSL

  # Page Objects
  OVER_THIRTEEN_TEXT = '13 or over'
  DOB_DAY_ID = 'day-input'
  DOB_MONTH_ID = 'month-input'
  DOB_YEAR_ID = 'year-input'
  CONTINUE_ID = 'submit-button'
  EMAIL_ID = 'user-identifier-input'
  PASSWORD_ID = 'password-input'
  REGISTER_ID = 'submit-button'
  SHOW_PASSWORD_ID = 'toggle-password-type'
  ERROR_ID = 'form-message-password'

  def find_over_thirteen
    find_link(OVER_THIRTEEN_TEXT)
  end

  def click_over_thirteen
    click_link(OVER_THIRTEEN_TEXT)
  end

  def find_DOB_day
    find_field(:id, DOB_DAY_ID)
  end

  def input_DOB_day(day)
    fill_in(DOB_DAY_ID, with: day)
  end

  def find_DOB_month
    find_field(:id, DOB_MONTH_ID)
  end

  def input_DOB_month(month)
    fill_in(DOB_MONTH_ID, with: month)
  end

  def find_DOB_year
    find_field(:id, DOB_YEAR_ID)
  end

  def input_DOB_year(year)
    fill_in(DOB_YEAR_ID, with: year)
  end

  def dob_continue_button
    find_button(CONTINUE_ID)
  end

  def click_DOB_continue
    dob_continue_button.click
  end

  def find_email_input
    find_field(:id, EMAIL_ID)
  end

  def fill_in_email(email)
    fill_in(EMAIL_ID, with: email)
  end

  def find_password_input
    find_field(:id, PASSWORD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_ID, with: password)
  end

  def register_button
    find_button(REGISTER_ID)
  end

  def click_register_button
    register_button.click
  end

  def show_password
    click_link(SHOW_PASSWORD_ID)
  end

  def find_error_message
    find_by_id(ERROR_ID).text
  end

end
