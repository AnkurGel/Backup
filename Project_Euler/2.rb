#Making Fibonacii generator:
fibonacci = Enumerator.new do |yielder|
    a,b=1,1
    while a
        yielder.yield a
        a,b=b,a+b
    end
end
puts fibonacci.take_while{|x| x<=4_000_000}.select{|x| x%2==0}.inject(:+)
=begin
#crap approach
arr=Array.new(4000003,0)
arr[1],arr[2]=1,2
sum=2
for x in 3..4000001
arr[x]=arr[x-1]+arr[x-2]
sum+=arr[x] if arr[x]%2==0
end
p sum
=end
