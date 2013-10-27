Given(/^I have an existing budget$/) do
  my_budget.name.should eq("Awesome Budget")
end

When(/^I create a new category for Gas$/) do
  my_budget.add_new_category("Gas")
end

Then(/^I should have a gas category$/) do
  pending
end