#http://www.codechef.com/problems/CDS003/
c=gets.to_i
while(c>0) do
str=gets.chomp
puts str.scan(/6[5-9]|[7-9][0-9]|1[0-1][0-9]|12[0-7]|32/).map(&:to_i).pack('C*')
c-=1
end
