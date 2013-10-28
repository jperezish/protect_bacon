Feature: Create budget

  As a Budgeter I want to be able to create a budget so that I can get my spending under control and be more planful.

  Scenario: Create a budget without categories
    When I create a budget without categories
    Then I should see "Your new budget is ready to use."

  Scenario: Create a budget with categories
    When I create a budget without categories
    Then I should see "Your new budget is ready to use."