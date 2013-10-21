module KnowsTheDomain
  def my_budget_category
    @my_budget_category ||= BudgetCategory.new
  end

  def my_budgeter
    @my_budgeter ||= Budgeter.new(my_budget_category)
  end
end

World(KnowsTheDomain)