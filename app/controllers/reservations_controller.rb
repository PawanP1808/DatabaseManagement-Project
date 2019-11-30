class ReservationsController <ApplicationController
  def new
    @reservation = Reservation.new
  end
# insert into reservations
  def create

    # render plain: params[:customer].inspect
    @reservation = Reservation.new(customer_params)
    # @Reservation.save
    if @reservation.save
      flash[:notice] = "Reservation Created"
      redirect_to reservation_path(@reservation)
    else
      render 'new'
    end
  end
# show reservations if not empty
  def show
@reservation = Reservation.first.nil?
    if @reservation
      flash[:notice] = "Reservation Table Empty"
     else
            @reservation = Reservation.find(params[:id])
     end
  end

  private
  def customer_params
    params.require(:reservation).permit(:range,:total_cost,:employee_id,:customer_id,:branch_id,:vehicle_id)
  end





end
