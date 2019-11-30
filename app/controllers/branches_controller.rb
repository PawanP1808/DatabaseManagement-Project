class BranchesController <ApplicationController
  def new
    @branch = Branch.new
  end
# inserts into branch table
  def create

    # render plain: params[:customer].inspect
    @branch = Branch.new(customer_params)
    # @Branch.save
    if @branch.save
      flash[:notice] = "New branch added"
      redirect_to branch_path(@branch)
    else
      render 'new'
    end
  end
# displays branchs from table data
  def show

    @branch = Branch.first.nil?
    if @branch
      flash[:notice] = "Branches Table Empty"

     else
           @branch = Branch.find(params[:id])
     end
  end

  private
  def customer_params
    params.require(:branch).permit(:street,:city,:postal_code,:phone_no)
  end




end
