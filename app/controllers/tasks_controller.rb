class TasksController < ApplicationController
  def index
    @tasks=Task.order(:position)
  end
  
  def show
    @task=Task.find(params[:id])
  end

  def new
    @count= Task.count
    @task=Task.new(position: @count + 1);
  end

  def delete
  end
  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
