def data_total(data)
  data.size.to_f
end

def green_data(data)
  green_data = data.select {|num| num >= 9}
  green_total = green_data.size.to_f
  green_total/data_total(data) * 100
end

def red_data(data)
  red_data = data.select {|num| num < 7}
  red_total = red_data.size.to_f
  red_total/data_total(data) * 100
end

def net_score(data)
  green_data(data) - red_data(data)
end
