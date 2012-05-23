class ProjectsController < ApplicationController
  respond_to :json, :xml
  
  def index
    respond_with Project.all
  end

  def new
    respond_with Project.new
  end
  
  def show
    respond_with Project.find(params[:id])
  end
  
  def edit
    respond_with Project.find(params[:id])
  end

  def create
    respond_with Project.create(params[:project]) 
  end

  def update
    respond_with Project.update(params[:id], params[:project])
  end

  def destroy
    respond_with Project.destroy(params[:id])
  end
end