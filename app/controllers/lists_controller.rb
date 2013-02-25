class ListsController < ApplicationController
  def index
  	@lists = List.all()
  end

  def show
  	@list = List.find(params[:id])
  end

  def new 
  	@list = List.new
  end

  def create
  	list = List.new(params[:list])
  	if(list.save)
  		redirect_to list_url(list)
  	else
  		redirect_to lists_index_url
  	end
  end

  def edit
  	@list = List.find(params[:id])
  end

  def update
  	@list = List.find(params[:id])
  	if @list 
  		@list.update_attributes(params[:list])
  		redirect_to list_url(@list)
  	end
  end

  def destroy
  	list = List.find(params[:id])
  	if list
  		list.destroy
  		redirect_to lists_url
  	end
  end
end
