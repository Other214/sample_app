class UsersController < ApplicationController
<<<<<<< HEAD
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

=======
  def new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
>>>>>>> 6552151217bc6e6f841057dfc15be7451bbaf62d
end
