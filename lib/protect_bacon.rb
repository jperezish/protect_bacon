class BudgetCategory

  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end

  def update_balance(amount)
    @balance -= amount
  end
end

class Budgeter

  def initialize(budget_category)
    @budget_category = budget_category
  end

  def add_expense(amount)
    @budget_category.update_balance(amount)
  end
end