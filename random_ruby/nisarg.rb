=begin
#Trial Demo code goes below which works for particular n. 
puts "Enter n : "; n=gets.to_i
count=0
#n.downto(0){|x| count+=1
for i in 1..n 
count+=1 if (i.to_s.include?('1'))
end
puts "f(#{n}) = #{count}"
=end
#Will now try to loop this so that it runs independently
count=0; n=199981
while(1) do
	for i in 1..n
		count+=1 if (i.to_s.include?('1'))
		end
			if(count==n)#&&count!=1) 
				puts "FOUND!! f(#{n}) = #{count}"
					break
				else
					puts "f(#{n}) = #{count}"
					end
					
count=0; n+=1
end
