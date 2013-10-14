class UsersController < ApplicationController
  def new
      @user = User.new
      @title = "New"
  end

  def create 
      @user = User.create(user_params)
      if @user.save
        #  redirect_to @user
           redirect_to '/index'
      else
          render 'new'
      end
  end


  def show
      @user = User.find(params[:id])
      @title = @user.name
  end

  def index
      @user = User.new
      @users = User.all
      @title = "all"
  end

 private
     
      def user_params
            params.require(:user).permit(:name, :comment)
      end

  
end
