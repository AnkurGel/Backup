def rotate(current_pos, dir)
	cw={N: 'E', E: 'S', S: 'W', W: 'N'}
	acw={N: 'W', E: 'N', S: 'E', W: 'S'}
	if dir.eql?(?L);return cw[current_pos.intern]
	else
		acw[current_pos.intern]
	end
end
def move(from_pos, x, y)
#movehash={N: [x,y+1], E: [x-1, y], S: [x, y-1], W: [x+1, y]}
#movehash[from_pos.to_sym]
case from_pos
		when 'N'; y+=1
		when 'E'; x-=1
		when 'S'; y-=1 
		when 'W'; x+=1
end
return [x,y]
end
xmax,ymax=gets.split.map(&:to_i)
x,y,p=gets.split;x=x.to_i; y=y.to_i
str=gets.split(//)
str.each do |l|
case l 
	when 'L', 'R' then p=rotate(p,l)
	when 'M'; x,y=move(p, x, y)
#else p=rotate(p, l)
end
end
puts "#{x} #{y} #{p}"
