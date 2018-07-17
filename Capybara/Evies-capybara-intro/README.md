# User Interface Testing with Capybara
This is a testing framework to automate the process of UI testing with Selenium using Capybara.

## How to run the program
- Clone the capybara_pom folder to your machine
- Extract the contents of the zip file
- Navigate into this directory within your Terminal and run the command ``rspec``


## What Went Well
- I have successfully automated most of the the testing process for a user journey on the BBC homepage.
- I have built a page object model using OOP in Ruby to facilitate the maintainability of this framework. This means that future testers or developers who wish to continue my project have a superclass at their disposal, containing easily accessible and modifiable methods within it.
- I have used the least amount of logic possible in the tests themselves, which makes it easier to add more tests.



### Random Generator
I have also run unit tests on one of the generators so far. My random generator is now on GitHub: https://github.com/Evie-Skinner18/sparta-random-generator, and I will keep adding more methods to each generator, along with their corresponding tests, as the course progresses. I want to make my tests more thorough and more specific.



## Challenges
I didn't manage to assert that the correct error message was being displayed. For some reason Capybara cannot tell that the text in the error message matches the error message I have provided on RSpec!

## In a future iteration of this project...
I would like to test more pages of the website, use more Capybara methods, and fix the problem above.
