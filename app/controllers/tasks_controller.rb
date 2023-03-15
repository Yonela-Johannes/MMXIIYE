class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @event = Event.find(params[:event_id])
    @task.event = @event
    if @task.save
      redirect_to event_tasks_path(@event), notice: "Task was successfully created."
    else
      redirect_to event_tasks_path(@event), status: :unprocessable_entity, notice: "Event was not successfully created."
    end
  end

  def index
    @task = Task.new
    @event = Event.find(params[:event_id])
    @task.event = @event
    @tasks = @event.tasks

    @todo_tasks = @tasks.where(status: 0)
    @doing_tasks = @tasks.where(status: 1)
    @done_tasks = @tasks.where(status: 2)

    @overdue_tasks = @tasks.where(status: [0, 1]).where("due_date < ?", Date.today)
    @incomplete_tasks = @tasks.where(status: [0, 1])
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :due_date, :status)
  end
end
