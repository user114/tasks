class TasksController < ApplicationController
  def index
  	@tasks = Task.all()
  end

  def show
  end

  def destroy
  	task = Task.find(params[:id])
  	if task
  		task.destroy
  	end
  	redirect_to list_url(List.find(params[:list_id]))
  end
end
