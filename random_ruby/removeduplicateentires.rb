arr=Array.new
File.open("list") do |f| 
f.each{|l| arr<<l.chop}
end
def count_frequency(list)
	counts=Hash.new(0)
	for a_word in list
	counts[a_word]+=1
	end
	counts
	end

sort_frequency=count_frequency(arr).sort_by{|word,no| no}
puts "UNSORED RESULT: "
count_frequency(arr).sort_by{|word,no| -no}.each{|word, no| puts "#{word} : #{no}"}
puts "\nTOP RESULT"
top_results = sort_frequency.last(5)
	for i in 0...5
	word=top_results[i][0]; counts=top_results[i][1]
	puts "#{word} : #{counts}"
	end

