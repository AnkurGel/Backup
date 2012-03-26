c=gets.to_i
while(c>0) do
n=gets.to_i; flag=0
if n==1; flag=1
else
(1..(n/2)).each do |x|
(1..(n/2)).each do |y|
flag=1 if n==(x**2)+(y**2)
	end
end
end
if flag.eql?1;puts "YES" 
else puts "NO"
end
c-=1
end
