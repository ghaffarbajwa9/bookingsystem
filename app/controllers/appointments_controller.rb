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
        render 'new'
      end
    end
  
    def show
      @appointment = Appointment.find(params[:id])
    end
  
    # Implement update and destroy actions as needed
  
    private
  
    def appointment_params
      params.require(:appointment).permit(:customer_id, :employee_id, :date)
    end
  end
  