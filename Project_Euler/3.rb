require 'prime'
(600851475143/2).downto(1){|x| begin puts x; break; end if (600851475143%x==0)&&(x.prime?)==true}
