class CustomersController <ApplicationController
  def new
    @customer = Customer.new

  end

  def create
  response = Excon.get("http://apilayer.net/api/check?access_key=9e691b413c2d409bc6df3f247a3946ba&email="+params[:customer][:email]+"&smtp=1&format=1")
       return nil if response.status != 200
  @email = JSON.parse(response.body)
   # render plain: @email["format_valid"].inspect

    @customer = Customer.new(customer_params)
    if @email["format_valid"]
      @customer.email = params[:customer][:email]
      @customer.save
      if @customer.save
        flash[:notice] = "New customer added"
        redirect_to customer_path(@customer)
      else
        render 'new'
      end

    else
        flash[:notice] = "Email invalid"
        redirect_to "/"
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
    params.require(:customer).permit(:first_name,:last_name,:phone_number,:drivers_license,:date_of_birth,:street,:city,:postal_code)
  end




end
