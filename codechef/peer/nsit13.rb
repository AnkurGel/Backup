#http://www.codechef.com/problems/NSIT13
ctr=10
while(ctr>0) do
arr=[] 
(0...10).each do
n=gets.to_i
arr<<n%42
end
p arr.uniq.count
ctr-=1
end
