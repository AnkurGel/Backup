str, unwanted=gets.to_s.split
p str.tr!(unwanted,'')
list=str.split(//); temp=[]
list.each{|x| print "#{x}#{list.count(x)}" if temp.include?(x)==false; temp<<x}
=begin
#No use of hash now. MOdification above did it!
hash=Hash.new(0)
list.each do |x|
	hash[x]+=1
	end
hash.each{|k,v| print "#{k}#{v}"}
=end
