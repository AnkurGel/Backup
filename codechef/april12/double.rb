#http://www.codechef.com/APRIL12/problems/DOUBLE
cases=gets.to_i
while(cases>0) do
n=gets.to_i
puts "#{(n%2==0) ? "#{n}" : "#{n-1}"}"
cases-=1
end
