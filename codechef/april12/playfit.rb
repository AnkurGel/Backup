#http://www.codechef.com/APRIL12/problems/PLAYFIT
#Problem statements looks interesting. Autobots, roll in.
c=gets.to_i
while(c>0) do
x=gets.to_i
matches=gets.to_s.split.map(&:to_i) #Array entered.
if x<2
puts "UNFIT"
c-=1
next
end
diff_flag=0; new_comb_arr=[]; diff_arr=[]
matches.combination(2){|x| new_comb_arr<<x} #Oh, ruby, I love thou
new_comb_arr.each{|x| begin diff_arr<<(x[1]-x[0]); diff_flag=1;break; end if (x[1]-x[0])>0}
if diff_flag.eql?0; puts "UNFIT"
else puts diff_arr.max
end
c-=1
end
#LikeABoss
