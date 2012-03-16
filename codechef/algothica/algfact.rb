c=gets.to_i
while(c>0) do
n=gets.to_i; prod=1
n.downto(1){|x| prod*=x}
puts prod
c-=1
end
