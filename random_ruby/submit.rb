n=gets.to_i
while(n>0) do
x=gets.to_i
s=0
for i in 1..x/2 do
s+=i if(x%i==0)
end
puts s;
n-=1
end
