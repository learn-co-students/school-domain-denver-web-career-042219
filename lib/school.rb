require "pry"
class School
  attr_accessor :roster

  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster.keys.include?(grade)
      roster[grade] = []
    end
      roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.map do |grade, name|
        name.sort!
    end
    roster.sort.to_h
  end



end
