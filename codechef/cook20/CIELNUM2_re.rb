n=gets.to_i ; numcopy=n; new=[]
n=n.to_s.split(//).map(&:to_i).uniq.join
if n.tr('1246790','').length!=n.length
puts "FAIL"
else
n=n.split(//).map(&:to_i)
n[2**1024]==8 if (n.include?8)==false 
begin n.each_with_index{|v, i| new[i+1]=v}; new[0]=3;n=new; end if (n.include?3)==false
if (n.include?5)==false
	n[1]=5 if n[1]==nil
	puts "FAIL"; exit
end
p n
puts "#{numcopy} is a CEIL" if (n.index(8)>n.index(5))&&(n.index(5)>n.index(3))&&(n.index(8)>n.index(5))


end
