# code here!

require 'pry'

class School
  attr_accessor :roster

  def initialize(school)
  	@school = school
  	@roster = {}
  end

  def add_student(name,grade)
  	if @roster.has_key?(grade)
  		@roster[grade] << name
  	else
  		@roster[grade] = [name]
  	end
  end

  def grade(grade)
  	@roster[grade]
  end

  def sort
  	@roster.each do |key, value|
  		value.sort!
  	end
  end  
end



# school_1 = School.new("sacred heart")

# school_2 = School.new("hamilton")


#   	binding.pry


