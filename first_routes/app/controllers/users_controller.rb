class UsersController < ApplicationController
  def index
    render json: User.all
  end
  
  def show
    user = User.find_by(id: params[:id])
    render json: user
  end
  
  def create
    user = User.new(params.require(:user).permit(:email, :name))
    # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def update 
    # params.require(:user).permit(:email, :name)
    
    user = User.find_by(id: params[:id])

    if user.update(name: params[:user][:name], email: params[:user][:email])
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  
  def destroy
    user = User.find_by(id: params[:id])

    if user.destroy
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
end