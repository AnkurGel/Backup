require 'prime'
n=2_000_000; ctr=0
n.downto(1){|x| ctr+=x if x.prime?}
p ctr
