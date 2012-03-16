def series(n)
x=n;r=n;arr=[];arr<<r
100.times do 
temp=0;r.to_s.split(//).each{|y| temp+=y.to_i}
#temp=x.to_s.each_char{|y| y.to_i}
arr<<r+temp
r+=temp
end
arr
end
cases=gets.to_i
while(cases>0) do
n=gets.to_i;
s1=series(1)
s3=series(3)
s9=series(9)
sn=series(n)
sn.each do |x|
if s1.include?x
	puts "1 #{x}"
	break
	end
if s3.include?x
	puts "3 #{x}"
	break
	end
begin puts "9 #{x}"; break; end if s9.include?x
end
cases-=1
end
