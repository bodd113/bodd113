def bowling_score(frames)
  sum = 0
  frame_s = frame.split(" ").to_a
  frame_s[0..8].each do |frame|
    if frame.include?("/")
      sum += 10
      # plus point from next roll
    elsif frame.include?("X")
      sum += 10
      #plus points from newxt two rolls
    else
      sum += frame.to_i % 10
      sum += frame.to_i % 10 % 10
# how to incorp cons?
end

