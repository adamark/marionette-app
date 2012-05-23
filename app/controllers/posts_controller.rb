class PostsController < ApplicationController
  respond_to :json, :xml
  
  def index
    respond_with Post.all
  end

  def new
    respond_with Post.new
  end
  
  def show
    respond_with Post.find(params[:id])
  end
  
  def edit
    respond_with Post.find(params[:id])
  end

  def create
    respond_with Post.create(params[:post]) 
  end

  def update
    respond_with Post.update(params[:id], params[:post])
  end

  def destroy
    respond_with Post.destroy(params[:id])
  end

end