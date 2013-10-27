class BudgetCategory
  attr_reader :balance, :amount_spent, :budget, :name

  def initialize(name)
    @balance = 0
    @amount_spent = 0
    @budget = 0
    @name = name
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
    else
      @balance = 0
    end
  end

  def update_amount_spent(amount)
    @amount_spent += amount
  end

  def set_budget(amount)
    @budget = amount
  end
end

class Budgeter

  def initialize(budget_category)
    @budget_category = budget_category
  end

  def withdraw(amount)
    @budget_category.withdraw(amount)
    @budget_category.update_amount_spent(amount)
  end
end

class Budget
  def name
    "Awesome Budget"
  end

  def add_new_category(name)
    budget_category = BudgetCategory.new(name)
  end
end
