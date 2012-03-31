arr=File.open('longnum').map(&:to_i)
sum=0
arr.each{|x| sum+=x}
print sum.to_s.split(//).first(10).join
