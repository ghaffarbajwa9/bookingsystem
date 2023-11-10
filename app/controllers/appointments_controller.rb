class AppointmentsController < ApplicationController
    def index
      @appointments = Appointment.all
    end
  
    def new
      @appointment = Appointment.new
    end
  
    def create
      @appointment = Appointment.new(appointment_params)
      if @appointment.save
        redirect_to appointments_path, notice: 'Appointment created successfully.'
      else
        render :new
      end
    end
  
    def show
      @appointment = Appointment.find(params[:id])
    end
  
    def destroy
      @appointment = Appointment.find(params[:id])
      @appointment.destroy

      redirect_to appointments_path, status: :see_other
    end
  
    private
  
    def appointment_params
      params.require(:appointment).permit(:customer_id, :employee_id, :date)
    end
  end
  