class UsersController < ApplicationController

 def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by_id(params[:id])
    render json: user
  end

  def signup
    user = User.create(name: params[:name])
    render json: user
  end


  def create
    user = User.find_or_create_by(name: params[:username])
    potentials = User.where(gender: "Male")
    render json: {user: user, potentials: potentials}
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end


end
