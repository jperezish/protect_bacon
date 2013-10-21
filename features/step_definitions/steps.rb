
Given(/^I have (#{CAPTURE_CASH_AMOUNT}) in the food budget$/) do |amount|
  my_budget_category.deposit(amount.to_i)
  my_budget_category.balance.should eq(amount.to_i),
    "Expected the balance to be #{amount}, but it was #{my_budget_category.balance}"
end

When(/^I spend (#{CAPTURE_CASH_AMOUNT}) on food$/) do |amount|
  my_budgeter.add_expense(amount)
end

Then(/^I should have (#{CAPTURE_CASH_AMOUNT}) left in the food budget$/) do |amount|
    my_budget_category.balance.should eq(amount.to_i),
    "Expected the balance to be #{amount}, but it was #{my_budget_category.balance}"
end



