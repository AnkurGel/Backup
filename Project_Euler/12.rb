num=1;flag=0
arr=Array.new(1,0) #look_table constructed
#1.upto(n) do |num|
until flag==1 do
sum=0
sum=num+arr[num-1] # oh yes, iteration.none?==true
arr<<sum #push baby, push.
#num.downto(0) {|x| sum+=x} #time hogging approach, traded with above
num+=1
puts "\n#{sum}" # this is now main element who will be futher factorized.
factors_ctr=0
1.upto(sum) do|u|  # You are tampering efficiency. Go, Die.
factors_ctr+=1 if sum%u==0
end
print " #{factors_ctr}"
begin puts "VALUE = #{sum}!!! with factors = #{factors_ctr}";flag=1; exit end if factors_ctr==500
end
