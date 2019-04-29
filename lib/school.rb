class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def self.roster
    @roster
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end






# chool = School.new("Bayside High School")
#
# school.roster

# school.add_student("Zach Morris", 9)
# school.roster
# # => {9 => ["Zach Morris"]}

# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
# # => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"],

# school.grade(9)
# # => ["Zach Morris", "AC Slater"]


# Part 5.
# You should be able to get a sorted list of all the
# students where the strings in the student arrays are
# sorted alphabetically. For instance:
#
# school.sort
# # => {9 => ["AC Slater", "Zach Morris"], 10 =>
# ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
# Note that since hashes are unordered by nature,
# the order of the keys does not matter here,
# just the order of the student's names within each array.
