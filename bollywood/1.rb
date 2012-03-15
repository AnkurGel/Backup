file="list"; arr=[]
File.open(file) do |f|
arr=f.each.map{|x| x.downcase}
end

movie = arr.sample.chomp!# movie.each_char{|x| y=(((x=~/[aeiou ]/)!=nil)?x:'*'); print y; current<<y }
movie.gsub!(/[^a-z ]/,'')
current=movie.gsub(/[^aeiou ]/,'*').chars.map{|x| x}
puts current.join
trials_arr=[]
9.times do |x| 
match_found_ctr=0
	puts "Take a guess: " ; guess=gets.downcase.chomp!
	if (guess=~/[aeiou]/)!=nil
		puts "#{guess} is a vowel.. type consonant: "
		redo
	end
	redo if trials_arr.include?(guess)
	trials_arr<<guess
	if movie.include?guess 
		match_found_ctr=1
		puts "Okay! You got this one right. Placing.. "
		movie.length.times do |go|
		current[go]=guess if movie[go]==guess
		end
	end
puts current.join
	if current.include?('*')==false
		puts "BRAVO! Solved!!!"
		break
	end
	redo if match_found_ctr==1
	puts " ^ NOPE"
	puts "#{8-x} guess remaining.."
end
	
