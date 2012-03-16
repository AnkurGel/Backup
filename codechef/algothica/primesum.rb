c=gets.to_i
while(c>0) do
n=gets.to_i
s=0; 2.upto(n) do |x|
f=0
2.upto(x/2){|y| f=1 if x%y==0}
s+=x if f==0
end
puts s
c-=1
end
