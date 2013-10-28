require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Categories do
  it "has a collection of categories" do
    food  = Category.any_instance.stub(:name => "Food")
    gas   = Category.any_instance.stub(:name => "Gas")
    rent  = Category.any_instance.stub(:name => "Rent")
    my_categories = Categories.new([food, gas, rent])

    my_categories.categories.length.should eq(3)
  end
end