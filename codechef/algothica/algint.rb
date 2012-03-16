cases=gets.to_i
while(cases>0) do
str=gets.chomp
orig=str.dup
str=str.tr('01','10')
num1= str.slice!(0,32).to_i(2)
num2= str.slice!(0,16).to_i(2)
num3= str.to_i(2)

rem=num3%num1
puts rem.to_s(2).tr('01','10')
cases-=1
end
