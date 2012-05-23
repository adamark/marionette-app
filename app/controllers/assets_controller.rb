class AssetsController < ApplicationController
  respond_to :json, :xml
  
  def index
    respond_with Asset.all
  end

  def new
    respond_with Asset.new
  end
  
  def show
    respond_with Asset.find(params[:id])
  end
  
  def edit
    respond_with Asset.find(params[:id])
  end

  def create
    respond_with Asset.create(params[:asset]) 
  end

  def update
    respond_with Asset.update(params[:id], params[:asset])
  end

  def destroy
    respond_with Asset.destroy(params[:id])
  end
end