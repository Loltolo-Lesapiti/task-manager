class TasksController < ApplicationController
  def index
    @tasks=Task.order(:position)
  end
  
  def show
    @task=Task.find(params[:id])
  end

  def new
    @count= Task.count
    @task=Task.new(position: @count + 1)
  end

  def delete
    @task=Task.find(params[:id])
  end

  def create
    @task= Task.new(task_params);
    if @task.save
      redirect_to tasks_path
    else
      render ('new')
    end 
  end

  def update
    @task= Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render('edit')
    end 
  end

  def destroy
    @task= Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def edit
    @task= Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:name, :position, :completed, :description)
  end
end
