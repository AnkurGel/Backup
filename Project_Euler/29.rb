#Crap approach

arr=Array.new
(2..100).each do |a|
    (2..100).each do |b|
        arr<<a**b
    end
end
p arr.sort!.uniq.length #=> 9183 
