# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        # @roster[grade] = name
        # @roster[grade] = []
        # @roster[grade] << name
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.each do |grade, name|
            name.sort!
        end
    end

end