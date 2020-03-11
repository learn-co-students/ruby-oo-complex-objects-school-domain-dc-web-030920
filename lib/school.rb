# code here!
require 'pry'

class School

    attr_accessor :student, :roster

    def initialize(student)
        @student = student
        @roster = {}
    end
 
    def add_student(student, grade)
        roster[grade] = [] unless roster[grade]
        roster[grade] << student
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

