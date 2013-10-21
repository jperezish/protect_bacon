Feature: Add an expense

  Scenario: Expense added with enough money in the account
    Given I have $100 in the food budget
    When I spend $90 on food
    Then I should have $10 left in the food budget

  Scenario: Expense added with exactly enough money in the account
    Given I have $90 in the food budget
    When I spend $90 on food
    Then I should have $0 left in the food budget
