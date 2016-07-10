def sanitized_data(data)
  limited = data.reject { |num| num > 10 }
  limited = limited.reject { |num| num < 0 }
end
