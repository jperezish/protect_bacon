When(/^I spend \$(#{CAPTURE_CASH_AMOUNT}) on food$/) do |amount|
  add_expense amount, :from => my_category
end