class CustomersController <ApplicationController
  def new
    @customer = Customer.new

  end

  def create

    # render plain: params[:customer][:firstName].inspect
    @customer = Customer.new(customer_params)
    @customer.save
    if @customer.save
      flash[:notice] = "New customer added"
      redirect_to customer_path(@customer)
    else
      render 'new'
    end
  end

  def show

    @customer = Customer.first.nil?
    if @customer
      flash[:notice] = "Customers Table Empty"
     else
           @customer = Customer.all
     end
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name,:last_name,:phone_number,:drivers_license,:date_of_birth,:email,:street,:city,:postal_code)
  end




end