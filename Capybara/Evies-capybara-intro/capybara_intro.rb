require 'capybara'

#It's built around Selenium so need to configure the driver from here. Set up the driver
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


# Create a sesh where you can do all the actions from
session = Capybara::Session.new(:chrome)

#page actions
session.visit('http://toolsqa.com/automation-practice-form')

#Filling in forms is much easier. Its more readable and rubyish
session.fill_in 'firstname', with: 'Evehhhhh'

#choose e.g a radio button
session.choose 'exp-6'

#select from dropdown menu
session.select 'Europe', from: 'continents'

#clicking a button
session.click_button 'submit'

#Finding sth on a page for assertion e.g the 'Congratulations you've registered!' element for asserting the
#registration has been successful
session.find_button('Button')
session.find(:css '#NestedText')

sleep 5
