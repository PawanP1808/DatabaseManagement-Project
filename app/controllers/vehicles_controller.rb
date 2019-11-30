class VehiclesController <ApplicationController
  def new
    @vehicle = Vehicle.new
  end
# insert into vehicles table from view
  def create

    # render plain: params[:customer].inspect
    @vehicle = Vehicle.new(customer_params)
    # @vehicle.save
    if @vehicle.save
      flash[:notice] = "Vahicle added"
      redirect_to vehicle_path(@vehicle)
    else
      render 'new'
    end
  end
# shwo all vehicles in table
  def show
@vehicle = Vehicle.first.nil?
    if @vehicle
      flash[:notice] = "Vehicle Table Empty"
     else
            @vehicle = Vehicle.find(params[:id])
     end
  end

  private
  def customer_params
    params.require(:vehicle).permit(:license_plate, :brand, :model_no,:v_type,:trim,:capacity, :milage,:package_price,:branch_id,:color_id)
  end




end
