hash={" "=>" ", "a"=>"y", "b"=>"h", "c"=>"e", "d"=>"s", "e"=>"o", "f"=>"c", "g"=>"v", "h"=>"x", "i"=>"d", "j"=>"u", "k"=>"i", "l"=>"g", "m"=>"l", "n"=>"b", "o"=>"k", "p"=>"r","q"=>"z", "r"=>"t", "s"=>"n", "t"=>"w", "u"=>"j", "v"=>"p", "w"=>"f", "x"=>"m", "y"=>"a", "z"=>"q"} #generated the hash automatically by iterating it over given sample case. #PRY_FTW
c=gets.to_i
(1..c).each do |instance|
   str=gets.chomp
   arr=[]
   str.chars{|x| arr<<hash[x]}
   puts "Case ##{instance}: #{arr.join}"
end
