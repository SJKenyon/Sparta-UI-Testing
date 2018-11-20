require 'capybara/dsl'
require_relative '../generator/generator'

class BbcHomepage
  #include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

  #page object
  HOMEPAGE_URL = "http://www.bbc.co.uk"

  #do want the hash sign if using .click method but not otherwise
  SIGN_IN_LINK = "idcta-link"

  #no need to do the @driver variable eachtime because we've already set up the driver in the spec helper
  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    click_link(SIGN_IN_LINK)
  end

end #end of class
