require "capybara/cucumber"
require "capybara/dsl"
require_relative "../lib/bbc_site"
require_relative "../lib/generator/generator"


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end

World(BbcSite)
