cases=gets.to_i
while cases>0 do
    j=gets.chomp
    s=gets.chomp
    j=Regexp.new("["+j+"]")
    puts s.scan(j).count
    cases-=1
end
