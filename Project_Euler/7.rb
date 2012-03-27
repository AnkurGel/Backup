puts "2"
ctr=1
3.upto(1000000) do |x|
flag=0
2.upto(x/2) do |y|
begin flag=1; break end if x%y==0
end
begin ctr+=1; puts x end if flag==0
break if ctr==10001
end
