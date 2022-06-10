class StudentsController < ApplicationController
    def index
        # if params[:search]
        #     search_employees
        # end

        if params[:search].present?
           @student = Student.joins(:course).where("courses.name Like ?", "%"+ params[:search] +"%")
        else
           @students = Student.all
        end
    end

    # def search_employees
    #     if @employee = Employee.all.find{|employee| employee.first_name.include?(params[:search])}
    #       redirect_to employee_path(@employee)
    #     end
    # end
    
    def edit
        @student = Student.find(params[:id])
        @student.addresses.build
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
        # 2.times { @student.addresses.build }
        @student.addresses.build
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to @student
        else
            render :new
        end
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to @student
        else
            render :edit
        end
    end

    def destroy
       @student = Student.find(params[:id])
       @student.destroy
       
       redirect_to @student
    end

    private
    def student_params
       params.require(:student).permit(:first_name, :course_name, :last_name, :age, :contact, :rollnumber, addresses_attributes: [:student_id, :country, :city, :_destroy, :pincode, :place_building_streat ]) 
    end

end
