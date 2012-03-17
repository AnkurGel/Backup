#http://www.codechef.com/ANWS2012/problems/WYSIWYG4
cases=gets.to_i
while(cases>0) do
text,pat=gets.to_s.split
patlen=pat.length
pattern_front=pat.reverse.split(//)
pattern_back=pat.split(//)
frontflag, backflag=0,0
frontctr,backctr=0,0
text.each_char do |x|
begin frontctr+=1; pattern_front.pop; end if (x==pattern_front[-1])
begin backctr+=1; pattern_back.pop; end if (x==pattern_back[-1])
frontflag = 1 if frontctr==patlen
backflag = 2 if backctr==patlen
end
puts frontflag+backflag 
cases-=1
end
