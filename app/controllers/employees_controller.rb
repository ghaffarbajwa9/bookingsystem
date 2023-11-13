class EmployeesController < ApplicationController
  # before_action :authenticate_user!
  def index
    # @employees = Employee.all
    @pagy, @employees = pagy(Employee.all(), items: 10)

  end
  
  def new 
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(emp_params)

    if @employee.save 
      redirect_to employees_path
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit 
    @employee = Employee.find(params[:id])
  end


  def update
    @employee = Employee.find(params[:id])

    if @employee.update(emp_params)
      redirect_to employees_path
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy 
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to employees_path, status: :see_other
  end

  private 
  def emp_params
    params.require(:employee).permit(:name, :email, :emptype, :phone)
  end
end

