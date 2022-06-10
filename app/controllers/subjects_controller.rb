class SubjectsController < ApplicationController
  def create
     @teacher = Teacher.find(params[:teacher_id])
     @subject = @teacher.subjects.new(subject_params)
     if @subject.save
      redirect_to teacher_path(@teacher)
     end
  end

  def destroy
    @teacher = Teacher.find(params[:teacher_id])
    @subject = @teacher.subjects.find(params[:id])
    @subject.destroy
    redirect_to teacher_path(@teacher)
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :teacher_id)
  end

end
