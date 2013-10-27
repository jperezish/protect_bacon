When(/^I spend \$(#{CAPTURE_CASH_AMOUNT}) on food$/) do |amount|
  withdraw amount, :from => my_budget_category
end