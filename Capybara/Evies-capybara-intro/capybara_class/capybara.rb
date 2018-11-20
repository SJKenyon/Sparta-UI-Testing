#Require the DSL one instead this time
require 'capybara/dsl'

class BbcHomepage

  #page object
  HOMEPAGE_URL = "http://www.bbc.co.uk"
  SIGN_IN_LINK = "#idcta-link"

  def initialize
    #It's built around Selenium so need to configure the driver from here. Set up the driver
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @driver = Capybara::Session.new(:chrome)

  end

  def visit_homepage
    @driver.visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    @driver.find(SIGN_IN_LINK).click
  end

end

bbc = BbcHomepage.new
bbc.visit_homepage
bbc.click_sign_in_link
