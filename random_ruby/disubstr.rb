str=gets.to_s
def extract(string)
	string.downcase.scan(/./) 
	end
def countf(list)
	counts=Hash.new(0)
	for a in list
	counts[a]+=1
	end
	counts
	end
arr=extract(str)
genHash=countf(arr)
	ctr=0
genHash.each{|x, y| puts x; ctr+=1}
puts "\n\tTotal unique characters: #{ctr}"
newarr=Array.new(0)
for x in 2..(arr.length)
	for y in 0..(arr.length-x+1)
	newarr<<(arr[y])+(arr[y+1])
	end
	end
p newarr


