module KnowsTheUserInterface
  class UserInterface
    include Capybara::DSL

    def withdraw(amount)
      visit "/"
      fill_in "amount", :with => amount
      click_button "Submit"
    end
  end

  def my_budget
    args = {:name => "Awesome Budget",
            :description => "My awesome budget!",
            :categories => Categories.new([@food, @gas, @rent]) }
    @my_budget ||= Budget.new(args)
  end

  def my_category
    @my_category ||= Category.new(name: "Food",
                                    budget: 0,
                                    balance: 0)
  end

  def my_budgeter
    @my_budgeter ||= UserInterface.new
  end

  def withdraw(amount, options)
    category = options[:from]
    my_budgeter.withdraw(amount)
  end
end

World(KnowsTheUserInterface)