#Defining Fibonacci generator
fibonacci=Enumerator.new do |yielder|
    a,b=1,1
    while a
        yielder.yield a
        a,b=b,a+b
    end
end

#Adding specific_select filter to Enumerator
class Enumerator
    def specific_select(&block) #which will expect a block and ofcource, enumerator will be passed as self
        Enumerator.new do |yielder|
            self.each do |value|
                yielder.yield(value) if block.call(value)
            end
        end
    end
end

p fibonacci.specific_select{|x| x%2==0}.first(10) #Test sequence -> WORKS. cool

puts fibonacci.specific_select{|x| x.to_s.split(//).length==1000}.first #this is the number in fibonacci sequence with 1000 digits. We now need's its index+1

puts fibonacci.take_while{|x| x.to_s.split(//).length!=1000}.length+1 #Next term after this sequence is the term we got specific-selecte[ed] above :)
