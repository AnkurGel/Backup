c=gets.to_i
while(c>0) do
n=gets.to_i
x=(2**n).to_s.chars.map{|x| x.to_i}
s=x.inject{|s, y| s+=y}
puts s
c-=1
end
