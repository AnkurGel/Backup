n=gets.to_i
while(n>0) do
x=gets.to_i
sum=0
for i in 1..x/2 do
sum+=i if(x%i==0)
end
puts sum;
n-=1
end
