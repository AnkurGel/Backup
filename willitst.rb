n=gets.to_i
while(n>1) do
if n%2==0 then n/=2
else
n=3*n+3
end
end
puts "TAK"
