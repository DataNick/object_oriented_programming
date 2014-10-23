class MarsRover
	attr_accessor :x, :y

	def initialize(x, y, dir)
		@x = x
		@y = y
		@dir = dir
	end

	def position
		puts "I am at #{x}, #{y} heading #{dir}."
	end

	def move

	end

	def right
	end

	def left
	end
end