class PagesController < ApplicationController
  def home
    @users = User.all
    @resource ||= User.new
    @devise_mapping ||= Devise.mappings[:user]
  end
end
