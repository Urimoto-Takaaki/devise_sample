class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
  end


  private
  def job_params
    params.require(:job).permit(:name, :life, :power, :skill)
  end
end
