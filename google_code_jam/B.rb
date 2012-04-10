def result(str)
   str.split.reverse.join(' ')
end
n=gets.to_i
(1..n).each do |i|
   str=gets.chomp
   puts "Case ##{i}: "+result(str)
   n-=1
end
