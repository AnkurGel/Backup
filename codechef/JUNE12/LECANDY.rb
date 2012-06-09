c = gets.to_i
c.times do 
    n,c = gets.split.map &:to_i
    total_candies_elephants_want = gets.chomp.split.map(&:to_i).inject(:+)
    if total_candies_elephants_want<=c
        puts "Yes"
    else
        puts "No"
    end
    #puts "#{total_candies_elephants_want <= c? "YES" : "NO" }"
end
