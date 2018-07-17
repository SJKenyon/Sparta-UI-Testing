Feature: cucumber expressions
  As a user I wish to see how cucumber expressions work

  Scenario: I am able to use integers
    Given I provide an integer of 14
    Then I will be able to test the integer

  Scenario: I am able to use floats
    Given I provide a float of 21.5
    Then I will be able to test the float

  Scenario: I am able to capture and use words
    Given I provide the specific word banana
    Then I will be able to test the word

  Scenario: I am able to capture words and numbers using regular expression
    Given I provide the a specific word like cheese I can capture it using regex
    Then I will be able to test the captured regex
