cities = ["miami", "madrid", "barcelona"]

puts cities.reduce(0){|memo,sum| memo + sum.length/cities.length}.to_f











