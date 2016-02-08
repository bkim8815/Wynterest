class GithubController < ApplicationController
  def index
      @search= params[:search]

      @profile = Github.new.get_profile(@search)

  end








end
