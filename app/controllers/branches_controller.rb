class BranchesController <ApplicationController
  def new
    @branch = Branch.new
  end

  def create

    # render plain: params[:customer].inspect
    @branch = Branch.new(customer_params)
    # @Branch.save
    if @branch.save
      flash[:notice] = "Customer branch"
      redirect_to branch_path(@branch)
    else
      render 'new'
    end
  end

  def show
    @branch = Branch.find(params[:id])
  end

  private
  def customer_params
    params.require(:branch).permit(:street,:city,:postalCode,:phoneNo)
  end




end
