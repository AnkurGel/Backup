n,to_be_factorized=gets.chomp.split.map(&:to_i)
arr=gets.chomp.split.map(&:to_i)
factors=[]; 1.upto(to_be_factorized){|x| factors<<x if to_be_factorized%x==0}
ctr=0; #factors.each{|x| facctr=0; arr.each{|y| facctr+=1 if y%x==0} ctr+=1 if facctr==n}
factors.each do |x|
   facctr=0
   arr.each do |y|
      facctr+=1 if (y%x)==0
   end
   ctr+=1 if facctr==n
end
p ctr
