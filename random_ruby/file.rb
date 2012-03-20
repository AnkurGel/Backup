#Problem given at : http://www.ieee.org/membership_services/membership/students/awards/xtremesamples.html (last one)
i=0;createwordhash=Hash.new(0)
File.open("words.txt") do |f|
	f.each do|word| 
		word=word.to_s.chomp.downcase
		String.new(str="")
		word.each_char do |l| #extrating letters
			str<< case l
			when 'a'..'c' then "2"
			when 'd'..'f' then "3"
			when 'g'..'i' then "4"
			when 'j'..'l' then "5"
			when 'm'..'o' then "6"
			when 'p'..'s' then "7"
			when 't','u','v' then "8"
			else "9"
			end
		end
	createwordhash[word]=str
	i+=1
	end
end
#File work ended. 
puts "Total words in word_list = #{i}"
createwordhash=createwordhash.sort_by{|word, no| word}
puts "Enter your numerals: "; num=gets.to_s.chomp
for x in 0...i
mywordwas=createwordhash[x][0]
its_no_is=createwordhash[x][1]
	puts "Matched with : #{mywordwas}" if(its_no_is.include?(num)) 
end

