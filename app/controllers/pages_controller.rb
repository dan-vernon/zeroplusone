class PagesController < ApplicationController
  def home
    @users = User.all.limit(9)

    @resource ||= User.new
    @devise_mapping ||= Devise.mappings[:user]
  end
end
