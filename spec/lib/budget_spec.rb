require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Budget do
  args = {:name => "My Budget",
          :description => "My awesome budget!" }
  let(:my_budget) { Budget.new(args) }

  describe "#name" do
    it "has a name" do
      expect(my_budget.name).to eq("My Budget")
    end
  end

  describe "#description" do
    it "has a description" do
      expect(my_budget.description).to eq("My awesome budget!")
    end
  end

  describe "#get_categories" do
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
end