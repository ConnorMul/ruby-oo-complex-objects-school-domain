# code here!
require 'pry'
class School
    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade].push(name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       sorted_students = {}
       @roster.each do |grade, students|
        sorted_students[grade] = students.sort!
       end
       sorted_students
    end
end
