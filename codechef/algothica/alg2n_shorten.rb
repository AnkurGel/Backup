c=gets.to_i
while(c>0) do
n=gets.to_i
puts (2**n).to_s.chars.map(&:to_i).reduce(:+)
c-=1
end
