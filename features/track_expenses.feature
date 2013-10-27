Feature: Track expenses

  Knowing what I spend my money on is extremely important. I need to track what I spend and match that against a budget category. I want to be able to create a new category and set its budget and initial balance.

  Scenario: Expense added with enough money in the budget category
    Given I have $100 in the food budget
    When I spend $90 on food
    Then $90 should be added to the amount spent on food
    And I should have $10 left in the food budget

  Scenario: Expense added with exactly enough money in the budget category
    Given I have $70 in the food budget
    When I spend $70 on food
    Then $70 should be added to the amount spent on food
    And I should have $0 left in the food budget

  Scenario: I spent more money than I have in the budget category
    Given I have $0 in the food budget
    When I spend $70 on food
    Then $70 should be added to the amount spent on food
    And I should have $0 left in the food budget

  Scenario: Expense added with dollars and cents
    Given I have $70 in the food budget
    When I spend $62.50 on food
    Then $62.50 should be added to the amount spent on food
    And I should have $7.50 left in the food budget