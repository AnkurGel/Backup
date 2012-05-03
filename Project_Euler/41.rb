require 'prime'
limit=9
limit.downto(4) do |n|
    arr=[]
    (1..n).to_a.join.split(//).permutation(n){|x| arr<<x.join.to_i}
    puts "For #{n}, total permutations: #{arr.length}"
    a=arr.select{|x| x.prime?}
    p a
    begin puts "Answer:"; a.last; break; end if a.nil?
end
