Feature: show a clear example of an example table

  Scenario Outline: using an example table can expand your tests and make them data dynamic
    Given I have more than one data row in my example table
    And includes a <name> and <age>
    Then I can validate the <name> and <age> are correct

    Examples:
    | name  | age |
    | Dave  | 23  |
    | Tim   | 34  |
    # | Rich  | 27  |
    # | James | 23  |
