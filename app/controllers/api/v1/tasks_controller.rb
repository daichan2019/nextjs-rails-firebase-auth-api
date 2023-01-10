module Api
  module V1
    class TasksController < ApplicationController
      def index
        @tasks = current_user.tasks
      end

      def create
        @task = Task.create(task_params)
      end

      def show
        @task = current_user.tasks.find(params[:id])
      end

      def update
        @task = current_user.tasks.find(params[:id])
        @task.update!(task_params)
      end

      def destroy
        @task = current_user.tasks.find(params[:id])
        @task.destroy!
      end

      private

      def task_params
        params.require(:task).permit(:title, :body).merge(user_id: current_user.id)
      end
    end
  end
end
