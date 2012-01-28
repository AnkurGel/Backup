n=gets.to_i
while(n>0) do
y=gets.to_i #faaltu_ki_bakchodi
str=gets #bhenchod string le lia
#fires irb
flag=0
engpattern=/[a-zA-Z]/
pattern=/[ #]/
		before=""; after=""; eng=""
str.each_char do |x|
	if((x=~engpattern)!=nil)
		flag=1;eng<<x
	end
	if((x=~pattern)!=nil) 
		if(flag!=1)
			before<<x
		else
			after<<x
		end
	end
end
after=after.strip; eng=eng.strip; eng=eng.strip
a=after.empty? ; e=eng.empty?; b=before.empty?
if(!a && !e && !b); puts "#{after} #{eng} #{before}"
if(!a && !e && b); puts "#{after}#{eng}" 
elsif(e)
	puts "#{before}"
elsif(b && a )
	puts "#{eng}" 
elsif(a && !e && !b)
puts "#{eng} #{before}" 
else; puts "NO PUTPUT"
end
n-=1
end
