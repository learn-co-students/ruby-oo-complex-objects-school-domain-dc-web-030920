# code here!

class School
    attr_accessor :roster


    def initialize(roster)
        @roster = {}
    end

    # def add_student(name, grade)
        
    #     @roster[grade] = [name] 
    # end

    # def add_student(name, grade)
      
    #   @roster[grade] = [] if @roster[grade] != TRUE
    #   @roster[grade] << name
    #   puts @roster
      
    # end
    def add_student(name, grades)
      
        if @roster[grades] != nil
            
            @roster[grades] << name
        else
            @roster[grades] = []
        @roster[grades] << name
        end
        
      end
      
    def grade(grades)
        @roster[grades]
    end
    
    def sort
       @roster.each { |key, value| value.sort!}
   
    end
end