def check_recycle(n, m)
   return false if m.to_s.length!=n.to_s.length
   flag=0
   iterate_till = m.to_s.length #times
   m=m.to_s.split(//); nm=[]
   (1..iterate_till).each do |number_of_times|
      (1..iterate_till).each do |i|
         nm[i%iterate_till]=m[i-1]
      end
      m=nm.dup
      flag=0
      begin flag=1; break; end if m.join==n.to_s
   end
   return true if flag==1
   #Fires PRY
   #n.to_s.split(//).sort.join==m.to_s.split(//).sort.join
end
c=gets.to_i
(1..c).each do |instance|
   low_l, high_l=gets.chomp.split.map(&:to_i)
   ctr=0
   (low_l..high_l-1).each do |m|
      ((m+1)..high_l).each do |n|
         ctr+=1 if check_recycle(m,n)
      end
   end
   puts "Case ##{instance}: #{ctr}"

end
