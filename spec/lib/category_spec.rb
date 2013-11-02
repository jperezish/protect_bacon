require_relative "../../lib/protect_bacon"
require "spec_helper"

describe Category do
  let(:food_budget) { Category.new(name: "Food",
                                    budget: 0,
                                    balance: 0) }

  describe "#balance" do
    it "has a 0 balance when created" do
      expect(food_budget.balance).to eq(0)
    end
    it "cannot be a negative number" do
      food_budget.add_expense(100)

      expect(food_budget.balance).to eq(0)
    end
  end

  describe "#deposit" do
    it "increases the balance" do
      food_budget.deposit(450)

      food_budget.balance.should == 450
    end

    it "can take multiple deposits" do
      food_budget.deposit(10)
      food_budget.deposit(1.55)

      expect(food_budget.balance).to eq(11.55)
    end
  end

  describe "#add_expense" do
    it "decreases the balance" do
      food_budget.deposit(500)
      food_budget.add_expense(230)

      expect(food_budget.balance).to eq(270)
    end
  end

  describe "#update_amount_spent" do
    it "tracks the amount spent" do
      food_budget.update_amount_spent(40)

      expect(food_budget.amount_spent).to eq(40)
    end
  end

  describe "#set_budget" do
    it "sets the budget" do
      food_budget.set_budget(300)

      expect(food_budget.budget).to eq(300)
    end
  end
end
