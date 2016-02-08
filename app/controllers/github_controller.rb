class GithubController < ApplicationController
  def index

      @profile = Github.new.get_profile


  end








end
