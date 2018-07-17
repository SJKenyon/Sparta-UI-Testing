require 'spec_helper'

#USE CASE TESTING. Finish the journey by adding new methods to the sign in class

#Good descriptions are key to knowing what's going wrong when you have loads of tests.
describe 'Incorrect user details produces valid error' do

#Always write your context as if it's one big test
  context 'It should respond with the correct error message when incorrect details are input' do

    it "should produce an error when inputting incorrect password to an invalid account" do
      #Instatniate the superclass in the test so we can access all the classes in our test
      @bbc_site = BbcSite.new

      #That superclass is now saved in the variable @bbc_site. So now we can call the method bbc_homepage on that which
      #opens the giant door of the superclass. So now in front of you you have two smaller doors and these are your two
      #smaller classes (which you can open by calling the methods). We want homepage class so we call .bbc_homepage. And now
      #inside this bbc homepage room you can now see all the methods available for the homepage.
      @bbc_site.bbc_homepage.visit_homepage

      #Click sign in
      @bbc_site.bbc_homepage.click_sign_in_link

      #Fill in username on sign in page: use your random generator!
      @bbc_site.sign_in_page.fill_username_field

      #Fill in password
      @bbc_site.sign_in_page.fill_password_field

      #click sign in button
      @bbc_site.sign_in_page.click_sign_in_button

      #Make an assertion that the error is 'Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here.'
      @bbc_site.sign_in_page.check_for_error_message
      expect(@bbc_site.sign_in_page.get_error_message_value).text should match("Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or <a href=\"https://www.bbc.co.uk/usingthebbc/account/im-having-problems-with-my-username\" class=\"link\">get help here</a>")
    end


  end #end of context

end #end of describe
