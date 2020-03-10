class School

    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade_num)
        if @roster.has_key?(grade_num)
            grade_val = @roster[grade_num]
        end
    end

    def sort
        newHash = {}
        @roster.sort.map do |grade, names|
            newHash[grade] = names.sort
        end
        newHash
    end
end