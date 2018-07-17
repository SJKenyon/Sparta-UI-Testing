Given("I provide an integer of {int}") do |int|
  @arg1 = int
end

Then("I will be able to test the integer") do
  expect(@arg1).to eq 14
end

Given("I provide a float of {float}") do |float|
  @float_var = float
end

Then("I will be able to test the float") do
  expect(@float_var).to be_kind_of(Float)
  expect(@float_var).to eq 21.5
end

Given("I provide the specific word {word}") do |word|
  @captured_word = word
end

Then("I will be able to test the word") do
  expect(@captured_word).to be_kind_of(String)
  expect(@captured_word).to eq "banana"
end

Given(/^I provide the a specific word like (.*) I can capture it using regex$/) do |word|
  @captured_cheese = word
end

Then("I will be able to test the captured regex") do
  expect(@captured_cheese).to be_kind_of(String)
end
