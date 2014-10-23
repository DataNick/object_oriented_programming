class Parent
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hello, my name is #{name}."
	end
end

class Student < Parent
	def learn
		puts "I get it!"
	end
end

class Instructor < Parent
	def teach
		puts "Everything in Ruby is an Object."
	end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")
chris.teach
cristina.learn
cristina.teach

# I tried creating instances of both Instructor and Student calling
# the greeting method. This did not work. I learned I have to pass it
# the name of the person because #name was initialized in
# the parent class.
# The teach method will not work on the Student instance because 
# student didn't inherit from Instructor. 

