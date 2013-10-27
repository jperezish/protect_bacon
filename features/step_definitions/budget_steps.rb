Given(/^I have an existing budget$/) do
  my_budget.name.should eq("Awesome Budget")
end

When(/^I create a new budget category for Gas$/) do
  my_budget.add_new_category("Gas")
end

Then(/^I should have a food budget category$/) do
  pending
end