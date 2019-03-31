my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda{|x| x.is_a? Symbol}

puts symbols = my_array.select(&symbol_filter)

