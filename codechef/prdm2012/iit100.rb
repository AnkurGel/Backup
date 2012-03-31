n,k=gets.split.map(&:to_i)
arr=gets.split.to_a.map(&:to_i)
onesandminus_arr=Array.new(k,1); onesandminus_arr<<Array.new(n-k,-1); onesandminus_arr.flatten!
sum=0
onesandminus_arr.reverse!
arr.each_with_index{|v,i| sum+=v*onesandminus_arr[i]}
puts sum
