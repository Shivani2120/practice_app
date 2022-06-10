class CoursesController < ApplicationController
    def index
      @courses = Course.all
    end
    
    def edit
      @course = Course.find(params[:id])
    end

    def new
      @course = Course.new
    end

    def show
      @course = Course.find(params[:id])
    end  
    
    def create 
      @course = Course.new(course_params)
      @course.students << Student.find_by(params[:teacher_name])
      if @course.save
        redirect_to @course
      else
        render :new
      end
    end
    
    def update
      @course = Course.find(params[:id])
      if @course.update(course_params)
        redirect_to @course
      else
        render :edit
      end
    end

    def destroy
      @course = Course.find(params[:id])
      @course.destroy

      redirect_to @course
    end

    private
    def course_params
        params.require(:course).permit(:course_name, :duration, :fees)
    end
end
