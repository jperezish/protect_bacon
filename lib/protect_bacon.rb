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

  def add_expense(amount)
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
  def initialize(register)
    @register = register
  end

  def add_expense_for(category, amount)
    category.add_expense(amount)
    @register.dispense(amount)
  end
end

class Register
  def contents
    @contents or raise("I'm empty!")
  end

  def dispense(amount)
    @content = amount
  end
end

class Budget
  attr_reader :name, :description

  def initialize(args={})
    @name         = args[:name]
    @description  = args[:description]
    @categories   = args[:categories]
  end

  def get_categories
    @categories.categories
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
  "Welcome to Protect Bacon!"
  %{
    <html>
      <body>
        <form action="/add_expense" method="post">
          <label for="Amount">Amount</label>
          <input type="text" id="amount" name="amount">
          <button type="submit">Submit</button>
        </form>
      </body>
    </html>
  }
end

set :register, Register.new
set :category do
  fail "category has not been set"
end

post "/add_expense" do
  budgeter = Budgeter.new(settings.register)
  budgeter.add_expense_for(settings.category, params[:amount].to_f)
end







