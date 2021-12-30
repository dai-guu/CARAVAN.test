class ListsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to lists_path
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :category, :body)
  end

end
