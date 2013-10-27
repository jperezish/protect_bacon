module KnowsTheDomain

  def my_budget
    @my_budget ||= Budget.new
  end

  def my_category
    @my_category ||= Category.new("Food")
  end

  def my_budgeter
    @my_budgeter ||= Budgeter.new(my_category)
  end

  def withdraw(amount, options)
    category = options[:from]
    my_budgeter.withdraw(amount)
  end
end

World(KnowsTheDomain)