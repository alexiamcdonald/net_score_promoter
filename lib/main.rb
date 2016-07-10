require './net_promoter_score'
require './sanitizer'

# the array gets treated like a string with ARGV 😐
raw_data = ARGV[0].tr("[]", "").split(",").map(&:to_i)

data = sanitized_data(raw_data)

puts 'Your net promoter score is:'
puts net_score(data)
