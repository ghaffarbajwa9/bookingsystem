class CustomersController < ApplicationController
    def index 
        # @customers = Customer.all
        @pagy, @customers = pagy(Customer.all(), items: 10)

    end
    def new
        @customer = Customer.new
    end
    def create 
        @customer = Customer.new(customer_params)

        if @customer.save
            redirect_to customers_path
        else
            render :new 
        end
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
    
        redirect_to customers_path, status: :see_other
    end

    private 
    def customer_params
        params.require(:customer).permit(:name, :email, :phone)
    end
end
