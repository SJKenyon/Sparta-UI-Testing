require 'capybara/dsl'
#Make the generator available
require_relative '../generator/generator'

class BbcSignInPage
  #stablish the page constants, then start wriitng the methods that will interact with them
  #include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

  #page object
  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BUTTON = 'submit-button'
  ERROR_MESSAGE = '#form-message-username'

#need to instantiate the GENERATOR superclass in order to use either generator.
#Here we'vedone that and called on it the method random_form_values which opens the
#door to the methods contained inside the random form values gneerator.
#So now we can use the methods that generate the info to fill in the form e.g generate_first_name
# Storing it in a class variable so I can access it anywhere in this class
  @@random_form_generator = Generator.new.random_form_values

  def fill_username_field
    @invalid_username = @@random_form_generator.generate_invalid_username
    fill_in(USERNAME_FIELD, with: "#{@invalid_username}")
  end

  def fill_password_field
    @random_password = @@random_form_generator.generate_password
    fill_in(PASSWORD_FIELD, with: "#{@random_password}")
  end

  def click_sign_in_button
    click_button(SIGN_IN_BUTTON)
  end

  def check_for_error_message
    page.has_content?(ERROR_MESSAGE)
  end

  def get_error_message_value
    puts find(ERROR_MESSAGE)
  end

end #end of class
