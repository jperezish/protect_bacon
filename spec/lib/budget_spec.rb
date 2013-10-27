require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Budget do
  before do
    Categories.any_instance.stub(:category => "Food")
  end
  args = {:name => "My Budget",
          :description => "My awesome budget!",
          :categories => Categories.new }
  let(:my_budget) { Budget.new(args) }

  it "has a name" do
    my_budget.name.should eq("My Budget")
  end

  it "has a description" do
    my_budget.description.should eq("My awesome budget!")
  end

  it "has budget categories" do
    my_budget.categories.category.should eq("Food")
    # my_budget.categories.should eq(:categories_double)
  end
end