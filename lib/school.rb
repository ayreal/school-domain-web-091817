require 'pry'
class School
attr_reader :name
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
    # => {key of grade => ["val of name"]}
  end


  def add_student(name, grade)
    #adds a student to the school and the roster
    if grade_unique?(grade)
      roster[grade] = []
    end
      roster[grade] << name
  end

  def grade_unique?(grade)
    roster.has_key?(grade) == false
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end

end
