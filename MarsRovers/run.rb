require 'lib/code'

xmax,ymax=gets.split.map(&:to_i)
initError("Wrong number of arguments! Define grid properly. Eg: '5,5'") if !xmax||!ymax
puts "Enter number of Rovers you want to instruct: "; cases=gets.to_i; raise "Expecting an integer >0" if cases==0
while(cases>0) do
  bot_position=gets.chomp; initError("Wrong number of arguments. Define properly. Exampe: '1 2 N'") if bot_position.split.size!=3
	bot=Bot.new(bot_position)
	str=gets.chomp.upcase.gsub(/[^LMR]/,'').split(//) 
	str.each do |l| 
		case l 
		        when 'L', 'R' then bot.p=bot.rotate(bot.p,l)
		        when 'M'; bot.move(bot.p, bot.x, bot.y, xmax,ymax)
		end
	end
	puts "#{bot.x} #{bot.y} #{bot.p}"
	cases-=1
end
