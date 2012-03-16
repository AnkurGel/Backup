c=gets.to_i
while(c>0) do
state = Numeric.new
n=gets.to_i
case n
when 0;s=0
when 1;s=0
when 2;s=2
when 3;s=5
else
s=5
#print "2,3,"
(4..n).each do
   |i|
   (2..(Math.sqrt(i).ceil)).each do
      |thing|
      state = 1
      if (i.divmod(thing)[1] == 0)
         state = 0
         break
      end
   end
#print "#{i}\," unless (state == 0)
   s+=i unless (state==0)
end 
end
puts s
c-=1
end
