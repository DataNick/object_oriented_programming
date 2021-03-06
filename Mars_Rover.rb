class MarsRover
	attr_accessor :x, :y, :direction
# to acces the instance variables outside class, we need attr_accessor to receive those 
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		else
			puts "Instruction not recognizable"
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "W"
			@x -= 1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "E"
			@direction ="N"
		end
	end
	
	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		elsif @direction == "E"
			@direction = "S"
		end
	end
	# def position
	# 	puts "I am at #{x}, #{y} heading #{dir}."
	# end

# if rover moves North (up) the y variable is +. If it goes East 
# (left), the rover x variable is -.

	
			

	# def right(dir)
	# 	if (@direction == "N") && (@instruction == "L")
	# 		@direction == "W"
	# 	elsif (@direction == "S")
			
	# end

	# def left(dir)
	#end
end

puts "What direction would you like Rover1 to begin at? ('N', 'S', 'E', 'W')"
dir_point = gets.chomp.upcase.to_s
rover = MarsRover.new(0,0, dir_point)

puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
puts rover.read_instruction("R")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"






