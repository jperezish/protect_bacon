require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Budget do
  args = {:name => "My Budget",
          :description => "My awesome budget!" }
  let(:my_budget) { Budget.new(args) }

  it "has a name" do
    my_budget.name.should eq("My Budget")
  end

  it "has a description" do
    my_budget.description.should eq("My awesome budget!")
  end

  it "should return the budget categories" do
    double_categories = double("categories")
    args = {:name => "My Budget",
          :description => "My awesome budget!",
          :categories => double_categories }
    my_budget = Budget.new(args)

    double_categories.stub(:categories).and_return(nil)
    double_categories.should_receive(:categories).once

    my_budget.get_categories
  end
end