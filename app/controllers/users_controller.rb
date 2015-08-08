class UsersController < ApplicationController
  def index
  end

  def new
  	@user=User.new
  end
def create
  @user = User.new(user_params)
   if @user.save
	 redirect_to :action=>"index"
   flash[:notice] ="user Successfuly created"
   else

      render "new"
      flash[:notice] ="user Failed to create"
    end
end
  def edit
  end

  def show
  end
  def login_page
  end
  private
  def user_params
    params.require(:user).permit!
  end
end
