def calculate(first_number, second_number, operator)
  # compute and return result
  if operator == '+'
    return first_number + second_number
  elsif operator == '-'
    return first_number - second_number
  elsif operator = '/'
    return first_number.fdiv(second_number)
  else
    return first_number * second_number
  end
end
