class StudentsController < ApplicationController
    def index
        students=Student.all
        render json: students
    end

    def grades
        grades=Student.order(:grade).reverse
        render json: grades
    end

    def highest_grade
        student=Student.order(:grade).reverse[0]
        render json: student
    end
end
