def collect_green(score)
  score.select {|num| num >= 9}
end

def green_score(green_data, data)
  score = green_data.size.to_f
  total = data.size.to_f
  score/total * 100
end

def collect_red(score)
  score.select {|num| num < 7}
end

def red_score(red_data, data)
  score = red_data.size.to_f
  total = data.size.to_f
  score/total * 100
end

def nps(score)
  green_data = collect_green(score)
  green_data = green_score(green_data, score)
  red_data = collect_red(score)
  red_data = red_score(red_data, score)
  green_data - red_data
end
