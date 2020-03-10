# code here!

require 'pry'

class School 
    def initialize(school_name)
        @school_name =  school_name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(name, grade)
        if @roster[grade]
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
       sorted_keys = @roster.sort.to_h
        sorted_keys.each do |key, value|
            sorted_keys[key]= value.sort
        end
        return sorted_keys
    end

end

