class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students 
    end

    def grades
        students = Student.all.sort_by { |student| student.grade }.reverse
        render json: students
    end

    # def highest_grade
    #     student = Student
    # end

end
