Given(/^I am on the BBC home page$/) do
  bbc_homepage.visit_home_page
end

And(/^I move to the sign in page$/) do
  bbc_homepage.click_sign_in_link
end

When(/^I proceed to register$/) do
  bbc_sign_in_page.click_register_link
end

And(/^I select thirteen and over$/) do
  bbc_register.click_over_thirteen
end

And(/^I input my DOB$/) do
  bbc_register.input_DOB_day("28")
  bbc_register.input_DOB_month("02")
  bbc_register.input_DOB_year("1997")
  bbc_register.click_DOB_continue
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register.fill_in_email("sparta@gmail.com")
  # fill in password with the example table password
  # you may need to tab or access the next field to expose the error

  expect(password).to be_kind_of(String)
  bbc_register.fill_in_password(password)
  bbc_register.show_password
end

Then(/^I receive the corresponding error (.*)$/) do |error_message|
  # validate the error message using the data in the table
  # p bbc_register.find_error_message
  expect(bbc_register.find_error_message).to eq(error_message)
end
