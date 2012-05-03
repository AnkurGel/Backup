10.times do 
   x=gets.to_i
   ctr=0
   (0..x).each do |num|
      ctr+=1 if num.to_s(2).include?("101010")
   end
   puts ctr
end
