class MarsRover
	attr_accessor :x, :y, :dir

	def initialize(x, y, dir)
		@x = x
		@y = y
		@dir = dir
	end

	def position
		puts "I am at #{x}, #{y} heading #{dir}."
	end

# if rover moves North (up) the y variable is +. If it goes East 
# (left), the rover x variable is -.
the  

	def move
		if @dir = "N"
			then @y += 1
		elsif @dir = "S"
			then @y -= 1
		elsif @dir = "E"
			then @x += 1
		elsif @dir = "W"
			then @x -= 1
		end
	end
			

	end

	def right
	end

	def left
	end
end