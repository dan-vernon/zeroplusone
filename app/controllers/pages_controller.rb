class PagesController < ApplicationController
  def home
    @users = User.all.limit(12)

    @resource ||= User.new
    @devise_mapping ||= Devise.mappings[:user]
  end
end
