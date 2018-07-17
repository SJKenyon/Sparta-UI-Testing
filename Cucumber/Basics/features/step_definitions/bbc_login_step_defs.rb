Given("I access the bbc login page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.fill_in_username("qwerty@gt")
end

And("I input incorrect password details") do
  bbc_sign_in_page.fill_in_password("1q2w3e4r5")
end

When("I try to login") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error for not finding the account") do
  expect(bbc_sign_in_page.incorrect_password_text).to eq(bbc_sign_in_page.emailerror)
end

And("I input any username details") do
  bbc_sign_in_page.fill_in_username("Sophie")
end

And("I input an incorrect password as 1234abc") do
  bbc_sign_in_page.fill_in_password("1234abc")
end

When("I try and login") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error stating it needs to be at least 8 characters") do
  pending
end
