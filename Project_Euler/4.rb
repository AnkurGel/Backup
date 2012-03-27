arr=[]
999.downto(100) do |x|
999.downto(100) do |y|
begin puts "#{x}*#{y} = #{x*y}"; arr<<x*y; end if  (x*y).to_s==(x*y).to_s.reverse
end
end
p arr.max
