class UserSkillsController < ApplicationController
  before_action :set_user_skill, only: [:show, :edit, :update, :destroy]

  def index
    @user_skills = UserSkill.all
  end

  def show

  end

  def new
    @user_skill = UserSkill.new
  end

  def edit
    @user_skill
  end

  def create
    @user_skill = UserSkill.new(user_skill_params)
    if @user_skill.save
      redirect_to user_skill_show_path
    else
      render :new
    end
  end

  def update
    @user_skill.update(user_skills_params)
  end

  def destroy
    @user_skill.destroy
    redirect_to user_show_path
  end

  private

  def set_user_skill
    @user_skill = UserSkill.find(params[:id])
  end

  def user_skills_params
    params.require(:user_skill).permit(:user_id, :skill_id)
  end
end
