n=gets.to_i; ncopy=n
if n.to_s.tr('1246790','').length!=n.to_s.length
puts "FAIL"
else
	n=n.to_s.split(//).map(&:to_i)
	if n.include?8
		if n.include?5
			if n.index(8)<n.index(5)
				puts "FAIL case 1"
			elsif n.index(8)>=n.index(5)
				if n.include?(3)
					if (n.index(3)>=n.index(5))||(n.index(3)>=n.index(8))
						puts "FAIL case 2"
					else "#{ncopy} is a CEIL NUMBER"
					end
				else
				puts "#{ncopy} is a CEIL NUMBER"
			end
		elsif (n.include?3)&&(n.index(8)<n.index(3))
			puts "#{ncopy} is a CEIL NUMBER"
		else 
			puts "#{ncopy} is a CEIL NUMBER"
		end
	elsif n.include?5
		if n.include(3)&&n.index(3)<=n.index(5); puts "#{ncopy} is a CEIL NUMBER"
		elsif n.include(3) ; puts "#{ncopy} is not a CEIL NUMBER"
		end
	else
		puts "AMBIGUOUS"
	end

end




