triangle=Enumerator.new do |yielder|
    number=0
    count=1
    loop do
        number+=count
        count+=1
        yielder.yield number
    end
end
class Enumerator
    def gselect(&block)
        Enumerator.new do |yielder|
            self.each do |value|
                yielder.yield value if block.call value
            end
        end
    end
end
p triangle.gselect{|val| val%10==0}.first(5)
class Fixnum
    def total_divisors
        x=0
        (1..self/2).each{|val| x+=1 if self%val==0}
        x+1
    end
end
p triangle.gselect{|val| val%10==0}.first(5).map{|x| x.total_divisors}
p triangle.gselect{|val| val.total_divisors>=500}.first
