When(/^I spend (#{CAPTURE_CASH_AMOUNT}) on food$/) do |amount|
  my_budgeter.add_expense(amount)
end