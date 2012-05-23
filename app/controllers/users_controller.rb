class UsersController < ApplicationController
  respond_to :json, :xml
  
  def index
    respond_with User.all
  end

  def new
    respond_with User.new
  end
  
  def show
    respond_with User.find(params[:id])
  end
  
  def edit
    respond_with User.find(params[:id])
  end

  def create
    respond_with User.create(params[:user]) 
  end

  def update
    respond_with User.update(params[:id], params[:user])
  end

  def destroy
    respond_with User.destroy(params[:id])
  end
end