class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @users = User.all.limit(12)

    @resource ||= User.new
    @devise_mapping ||= Devise.mappings[:user]
  end
  def index
  end
end
