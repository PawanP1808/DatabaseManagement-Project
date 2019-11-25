class ColorsController <ApplicationController
  def new
    @color = Color.new
  end

  def create

    # render plain: params[:customer].inspect
    @color = Color.new(customer_params)
    # @color.save
    if @color.save
      flash[:notice] = "New color added"
      redirect_to color_path(@color)
    else
      render 'new'
    end
  end

  def show
    @color = Color.find(params[:id])
  end

  private
  def customer_params
    params.require(:color).permit(:color)
  end




end
