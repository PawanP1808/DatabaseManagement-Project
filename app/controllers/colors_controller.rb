class ColorsController <ApplicationController
  def new
    @color = Color.new
  end
# inserts into colors table
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
# displays color table is there is data
  def show
    @color = Color.first.nil?
    if @color
      flash[:notice] = "Color Table Empty"
     else
       @color = Color.find(params[:id])
     end
  end

  private
  def customer_params
    params.require(:color).permit(:color)
  end




end
