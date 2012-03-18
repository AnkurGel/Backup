cases=gets.to_i
result=0
while(cases>0) do
str=gets.to_s.chomp
str=str+" "
str=str.scan(/\d+ /).join.gsub(/\s/,'')
if str[0]==0 
str=str.split.map(&:to_i).drop(1).join
end
n=str.to_i ; numcopy=n; new=[]
n=n.to_s.split(//).map(&:to_i)
if numcopy.to_s.tr('1246790','').length!=numcopy.to_s.length
else
ctr8=n.count(8); ctr5=n.count(5); ctr3=n.count(3)
result+=1 if (ctr8>=ctr5)&&(ctr5>=ctr3)&&(ctr8>=ctr3)
end
cases-=1
end
puts result
