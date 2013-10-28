class Category
  attr_reader :balance, :amount_spent, :budget, :name

  def initialize(args)
    @balance      = args[:balance]
    @amount_spent = 0
    @budget       = args[:budget]
    @name         = args[:name]
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
  attr_reader :name, :description, :categories

  def initialize(args={})
    @name         = args[:name]
    @description  = args[:description]
    @categories   = args[:categories]
  end

  def categories
    
  end
end

class Categories
  attr_reader :categories

  def initialize(categories)
    @categories = categories
  end
end


require "sinatra"
get "/" do
  "Welcome to Protect Bacon"
end









