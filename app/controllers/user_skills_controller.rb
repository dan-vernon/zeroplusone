class UserSkillsController < ApplicationController

  def index
    @user_skill = UserSkill.all
  end

  def show
    @user_skill = UserSkill.find(params[:id])
  end

  def new
    @user_skill = UserSkill.new
  end

  def create
    @user_skill = UserSkill.new(user_skill_params)
    if @user_skill.save
      redirect_to user_skill_show_path
    else
      render :new
    end
  end

  def edit
    @user_skill = UserSkill.find(params[:id])
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    redirect_to user_show_path
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.update(user_skills_params)
  end

  private

  def user_skills_params
    params.require(:user_skill).permit(:user_id, :skill_id)
  end
end
