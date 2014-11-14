def rec_intersection(rect1, rect2)
  debugger

  x1_range = (rect1[0][0]..rect1[1][0]).to_a
  y1_range = (rect1[0][1]..rect1[1][1]).to_a

  x2_range = (rect2[0][0]..rect2[1][0]).to_a
  y2_range = (rect2[0][1]..rect2[1][1]).to_a

  x1 = x1_range&x2_range
  x1=x1.min

  x2 = x1_range&x2_range
  x2=x2.max

  y1 = y1_range&y2_range
  y1=y1.min

  y2 = y1_range&y2_range
  y2=y2.max


  intersection = [[x1,y1], [x2,y2]]

  if x1.nil? || x2.nil? || y1.nil? || y2.nil?
    return nil
  else
    return intersection
  end
end
