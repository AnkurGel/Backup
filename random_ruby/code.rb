def extract_words(newstring)
	newstring.downcase.scan(/[\w']+/) 
	end
def count_frequency(list)
	counts=Hash.new(0)
	for a_word in list
	counts[a_word]+=1
	end
	counts #last statement --> returns an hash 
	end
puts "Enter a paragraph to count frequency of recurring words: "
string=gets.chomp
sort_frequency=count_frequency(extract_words(string)).sort_by{|word,no| no}
puts "How many top results you wish to see? : "
num=gets.to_i
top_results=sort_frequency.last(num)

	for i in 0..num-1
	word=top_results[i][0]
	count=top_results[i][1]
	puts "#{word}: #{count}"
	end