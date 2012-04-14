#http://www.codechef.com/problems/NSIT15/
c=gets.to_i
seed=0
while c>0
n,l=gets.split(' ').map(&:to_i)
max_count_ctr=0
seed=(l==1)?2:1
loop do
if ((seed+1).to_s.split(//).to_a.map(&:to_i).include?l) ; seed+=1 #Hallelujah
else; seed+=1; max_count_ctr+=1
end
break if max_count_ctr==n
end
p seed-1
c-=1
end
#AnkurGel
