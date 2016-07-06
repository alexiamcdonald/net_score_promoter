require './net_promoter_score'

# the array gets treated like a string with ARGV 😐
data = ARGV[0].tr("[]", "").split(",").map(&:to_i)

puts 'Your net promoter score is:'
puts net_score(data)
