Feature: data table examples

  Scenario: I am able to iterate through a data table
    Given I have a table
    | Dave | 24 |
    | Tim  | 39 |
    Then I am able to print out each of the names and ages to the command line
