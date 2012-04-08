class Bot
	attr_accessor :x, :y, :p
	       @@acw = {N: 'E', E: 'S', S: 'W', W: 'N'} 			
	       @@cw =  {N: 'W', E: 'N', S: 'E', W: 'S'} 			
         @@pat = /[NEWS]/

	def initialize(string)
		@x,@y,@p = string.split( ).map{|v| (v=~@@pat)?v:v.to_i}        
    raise ArgumentError, "BAD ARGUMENT! Position can only be N/E/W/S" if @p.eql?0  
    initError("X coordinate can't be an alphabet(You typed '#{string.split[0]}'). FAIL!") if (string.split[0]!=@x.to_s)||x =~ @@pat
    initError("Y coordinate can't be an alphabet(You typed '#{string.split[1]}'). FAIL!") if (string.split[1]!=@y.to_s)||y =~ @@pat
	end

	def rotate(current_pos, dir)
		if dir.eql?(?L); return @@acw[current_pos.intern]
		else
			@@cw[current_pos.intern]
		end
	end

	def move(pos, xdir, ydir, xm, ym)
		case pos
			when 'N'; @y+=1
			when 'E'; @x-=1
			when 'S'; @y-=1
			when 'W'; @x+=1
		end
		crosscheck(xm,ym)					 
	end

  def to_s
    "#{x} #{y} #{p}"
  end

	private
	def crosscheck(xm,ym)
		@@presence=false
		(0..xm).each{|i| (0..ym).each{|j| begin @@presence=true; break; end if (x==i)&&(y==j)}}  
		begin puts "DISPUTED SIGNAL! Bot is instructed to go at (#{x}, #{y}) which lies out of grid."; exit end if !@@presence 
	end

end

def initError(msg)
    raise ArgumentError, msg
end
