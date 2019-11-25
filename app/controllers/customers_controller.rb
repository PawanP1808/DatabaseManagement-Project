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
    @customer = Customer.find(params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:firstName,:lastName,:phoneNumber,:driversLicense,:dateOfBirth,:email,:street,:city,:postalCode)
  end




end
