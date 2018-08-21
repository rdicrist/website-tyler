class HomeController < ApplicationController
  def index
    @video = Video.last
  end
end
