def damaged_or_sunk (board, attacks)
  boat_number = 0
  boats = Hash[(1..board.max.max).map { |num| [num, "£#{num}"] }]
  boats.each_key do |key|
    length = 0
    board.each do |j|
      length += j.count(key)
    end
    boats[key] = length
  end
  results = {"sunk" => 0, "damaged" => 0, "not_touched" => board.max.max, "points" => 0}
  squares = []
  attacks.each do |a|
    squares << board[board.length-a[1]][a[0]-1]
  end
  boats.each do |key, value|
    if squares.count(key) == value
      results["sunk"] += 1
      results["not_touched"] -= 1
      results["points"] += 1
    elsif squares.count(key) > 0 && squares.count(key) < value
      results["damaged"] += 1
      results["not_touched"] -= 1
      results["points"] += 0.5
    end
  end
  results["points"] -= results["not_touched"]
  return results
end

board = [ [3, 0, 1],
          [3, 0, 1],
          [0, 2, 1],
          [0, 2, 0] ]

attacks = [[2, 1], [2, 2], [ 3, 2], [3, 3]]

p damaged_or_sunk(board, attacks)
