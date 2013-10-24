class People
	attr_accessor :name

	def greeting()
		puts "Hi, my name is #{name}"	
	end
end

class Student < People
	
	def learn()
		puts "I get it"
	end

end

class Instructor < People

	def teach()
		puts "Everything in Ruby is an Object"		
	end
end

instructor = Instructor.new # This makes a new instance of Instructor
instructor.name = "Chris"	# This is to assign the new instructor instance the name "Chris"

student = Student.new
student.name = "Christina"

instructor.greeting #This is calling the greeting method by the Chris instructor
student.greeting





