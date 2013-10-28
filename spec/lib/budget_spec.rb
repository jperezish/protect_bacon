require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Budget do
  before do
    @food  = Category.any_instance.stub(:name => "Food")
    @gas   = Category.any_instance.stub(:name => "Gas")
    @rent  = Category.any_instance.stub(:name => "Rent")
    Categories.any_instance.stub(categories: "List")
  end
  args = {:name => "My Budget",
          :description => "My awesome budget!",
          :categories => Categories.new([@food, @gas, @rent]) }
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