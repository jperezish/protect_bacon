Feature: Create budget categories

  As a budgeter, I need to create budget categories in order to track what I spend my money on and how much.

  Scenario: Create a budget category with just a name
    Given I have an existing budget
    When I create a new budget category for Gas
    Then I should have a food budget category

  Scenario: Create a budget category with a budget and balance set