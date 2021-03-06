class EmployeesController <ApplicationController
  def new
    @employee = Employee.new

  end
# insert into employees
  def create

    # render plain: params[:customer].inspect
    @employee = Employee.create(customer_params)


    # @employee.save
    if @employee.save
      flash[:notice] = "Employee Created"
      redirect_to employee_path(@employee)
    else
      render 'new'
    end
  end
# show employees
  def show
    @employee = Employee.first.nil?
    if @employee
      flash[:notice] = "Employee Empty"

     else
       @employee = Employee.find(params[:id])
     end
  end

  private
  def customer_params
    params.require(:employee).permit(:branch_id,:first_name,:last_name,:ssn,:date_of_birth,:sex,:salary)
  end




end
