1.upto(70000000) do |x|
ctr=0
(1..20).each{|y| ctr+=1 if x%y==0}
puts ctr
begin puts x; break;end if ctr==20
end
