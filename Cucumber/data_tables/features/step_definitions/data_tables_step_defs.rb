Given("I have a table") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @table = table.raw # using .raw saves it in the raw table data type
end

Then("I am able to print out each of the names and ages to the command line") do
  @table.each do |data|
    puts "User's name is #{data[0]} and age is #{data[1]}."
  end
end
