class ReservationsController <ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create

    # render plain: params[:customer].inspect
    @reservation = Reservation.new(customer_params)
    # @Reservation.save
    if @reservation.save
      flash[:notice] = "Customer Color"
      redirect_to reservation_path(@reservation)
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private
  def customer_params
    params.require(:reservation).permit(:range,:totalCost,:employee_id,:customer_id,:branch_id,:vehicle_id)
  end





end
