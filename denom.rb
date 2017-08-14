def proper_fractions(n)
  #your code here
  return 0 unless n>1
  number_of_proper_fractions= 1
  for i in (2...n)
    if n % i == 0
      next
    elsif i == 2
      number_of_proper_fractions += 1
    else
      for j in (2...i)
        if n % j == 0 && i % j == 0
          break
        end
      end
    end
    p [i, j]
    if j == i-1
      number_of_proper_fractions += 1
    end
  end
  return number_of_proper_fractions
end


puts proper_fractions(15)
