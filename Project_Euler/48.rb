s=0
(1..1000).each { |value| s+=value**value }
puts s; puts "Last ten digits: #{s.to_s.reverse.split(//).first(10).reverse.join}"
