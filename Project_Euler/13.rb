p File.open('longnum').map(&:to_i).inject(&:+).to_s.split(//).first(10).join #once and for all
=begin
arr=File.open('longnum').map(&:to_i)
sum=0
arr.each{|x| sum+=x}
print sum.to_s.split(//).first(10).join
=end
