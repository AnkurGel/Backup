#http://www.codechef.com/CDMT2012/problems/SYNOL
str=gets.chomp
until str=='#'
hash={" "=>"%20", "!"=>"%21", "$"=>"%24", "%"=>"%25", "("=>"%28", ")"=>"%29", "*"=>"%2a"}
str.chars{|x| print "#{(hash.has_key?(x))?"#{hash[x]}": "#{x}"}"}
print "\n"
str=gets.chomp
end
