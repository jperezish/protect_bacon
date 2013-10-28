Given(/^I have an existing budget$/) do
  my_budget.name.should eq("Awesome Budget")
end

When(/^I create a budget without categories$/) do
  args = {name: "Bestest budget evar",
          description: "Simply the best."}
  my_budget = Budget.new(args)

  
end

When(/^I create a new category for Gas$/) do
  pending
  my_budget.add_new_category("Gas")
end

Then(/^I should have a gas category$/) do
  pending
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end