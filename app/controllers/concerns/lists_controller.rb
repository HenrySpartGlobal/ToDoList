class ListsController < ApplicationController
   def index
    @list = current_user.lists
   end

  def show
    # @list = current_user.Lists.find(params[:id])
    @list = List.find(params[:id])
  end

  def new
    @list = current_user.lists.new
  end

  def create

    #binding.pry

    new_list = current_user.lists.create(list_params)
    new_list.save

    redirect_to new_list_path

  end

  def edit
    # @list = current_user.lists.find(params[:id])
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    # list = current_user.lists.find(params[:id])
    list.update(list_params)

    redirect_to list
  end

  def destroy
    # current_user.lists.destroy(params[:id])
    List.destroy(params[:id])
    redirect_to lists_url
  end

  protected
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
