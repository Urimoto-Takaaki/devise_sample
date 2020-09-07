class JobsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(name: job_params[:name], life: job_params[:life], power: job_params[:power], skill: job_params[:skill], user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def job_params
    params.require(:job).permit(:name, :life, :power, :skill)
  end
end
