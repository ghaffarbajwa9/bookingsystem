class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def new
    @attendance = Attendance.new
  end
  def create 
    @employee = Employee.find(params[:employee_id])
    @attendance = @employee.attendances.new(attendance_params)
    if @attendance.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end

  def update
    @attendance = Attendance.find(params[:id])

    if @attendance.update(attendance_params)
      redirect_to @attendance
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    redirect_to root_path, status: :see_other
  end

  private 
  def attendance_params 
    params.require(:attendance).permit(:date, :status, :remarks, :emptype, :employee_id)
  end

end
