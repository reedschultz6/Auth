class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = User.find_by({"id" => session["user_id"]})
  end

  def create
    
end
  end

  def destroy
    @task = Task.find_by({ "id" => params["id"] })
    @task.destroy
    redirect_to "/tasks"
  end
end
