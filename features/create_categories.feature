Feature: Create categories

  As a budgeter, I need to create categories in order to track the things I spend my money on and how much I spend on them.

  Scenario: Create a category with just a name
    Given I have an existing budget
    When I create a new category for Gas
    Then I should have a gas category

  Scenario: Create a category with a category budget and balance set