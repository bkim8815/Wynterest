class GithubController < ApplicationController
  def index

    if params[:search].nil?
      @search = "wyncode"
      @profile = Github.new.get_profile("wyncode")
    else
      @search = params[:search]
      @profile = Github.new.get_profile(@search)
    end

  end



end
