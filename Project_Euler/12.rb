n=gets.to_i
1.upto(n) do |num|
sum=0
num.downto(0) {|x| sum+=x}
puts "\n#{sum}" # this is now main element who will be futher factorized.
factors_ctr=0
1.upto(sum) do|u|
factors_ctr+=1 if sum%u==0
end
print " #{factors_ctr}"
begin puts "VALUE = #{sum}!!! with factors = #{factors_ctr}"; exit end if factors_ctr==500
end
