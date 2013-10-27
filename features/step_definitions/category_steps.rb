Given(/^I have \$(#{CAPTURE_CASH_AMOUNT}) in the food budget$/) do |amount|
  my_category.deposit(amount)
end

Then(/^I should have \$(#{CAPTURE_CASH_AMOUNT}) left in the food budget$/) do |amount|
  my_category.balance.should eq(amount)
end

Then(/^\$(#{CAPTURE_CASH_AMOUNT}) should be added to the amount spent on food$/) do |amount|
  my_category.amount_spent.should eq(amount)
end
