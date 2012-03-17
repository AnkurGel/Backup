str, unwanted=gets.to_s.split
p str.tr!(unwanted,'')
list=str.split(//)
hash=Hash.new(0)
list.each do |x|
	hash[x]+=1
	end
hash.each{|k,v| print "#{k}#{v}"}
