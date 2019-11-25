class VehiclesController <ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def create

    # render plain: params[:customer].inspect
    @vehicle = Vehicle.new(customer_params)
    # @vehicle.save
    if @vehicle.save
      flash[:notice] = "Customer Color"
      redirect_to vehicle_path(@vehicle)
    else
      render 'new'
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  private
  def customer_params
    params.require(:vehicle).permit(:licensePlate, :brand, :modelNo,:v_type,:trim,:capacity, :milage,:packagePrice,:branch_id,:color_id)
  end




end
