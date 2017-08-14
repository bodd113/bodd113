def nesting (a, b)
  return false unless a.is_a?(Array) && b.is_a?(Array)
  for i in (0..a.length-1)
    if a[i].is_a?(Array) && b[i].is_a?(Array)
      next
    elsif !a[i].is_a?(Array) && !b[i].is_a?(Array)
      next
    else
      return false
    end
  end
  if i == a.length-1
    return true
  end
end


puts nesting([ 1, [ 1, 1 ] ], [ 2, [ 2, 2 ] ])

puts nesting([ 1, [ 1, 1 ] ], [ [ 2, 2 ], 2 ])
