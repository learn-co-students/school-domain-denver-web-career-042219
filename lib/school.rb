class School
attr_accessor :roster

  def initialize(school)
    @school = school
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
