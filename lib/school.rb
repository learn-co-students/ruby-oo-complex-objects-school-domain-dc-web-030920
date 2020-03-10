require 'pry' 

class School 

    attr_accessor :roster, :grade 

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    
        #"model" in the domain model context.
    end 

    def roster    #(name, grade)
        @roster
        #roster.push(:name, :grade)
        # :freshman, :Softmore => student names
        # will be built out to contain keys of grade levels. 
        #The value of each key will be an array of student names.
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
    sorted = {}
    roster.each do |x, y|
        sorted[x] = y.sort  
        end 
    sorted 
    end





end 
