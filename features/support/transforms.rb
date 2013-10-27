CAPTURE_CASH_AMOUNT = Transform /^\d+\.?\d*$/ do |number|
  number.to_f
end