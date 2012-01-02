cases=gets.to_i
while(cases>0) do
str=gets
arr=gets.split
arr=arr.collect{|x| x.to_i}
arr=arr.sort.reverse
#arr=[477,92, 74]
sum=Array.new
while(arr[0]!=0) do
array=arr.collect{|x| x%10}
	sum<<array.max
	 arr=arr.collect{|x| x/10}
	  end
	  total=0
	  sum=sum.reverse
	  sum.each{|x| total=total*10+x}
	  puts total
	  cases-=1
	  end
