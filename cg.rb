size =1249
while size<4060 do
i,ele=0,0
coins=Array.new(4060){|i| i+1}
ways=Array.new(4060, 0)
ways[0]=1;
while ele<size do
i=coins[ele]
#puts "Current value of i = #{i}"
j=i
while j<=size do
	ways[j]=ways[j]+ways[j-i]
	j+=1
	end
ele+=1
end
puts "#{i}: #{ways[size]}"
if ways[size]%1000000==0
puts "EUREKA"; break
end
size+=1
end

