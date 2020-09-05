class SkillsController < ApplicationController
  def show
   @skills = Skill.where(job_id: params[:id])
   @job = Job.find(params[:id])
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
  end
end