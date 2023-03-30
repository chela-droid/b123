class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    users = User.find_by(id: params[:id])
    render json: users
  end

  def create
    users = User.create(user_params)
    session[:user_id] = user_id
    render json: user, status:  :created

  end

  def update
    users = User.find_by(id: params[:id])
    render json: users
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end
end
