class HomeController < ApplicationController

	def show
        render template: "home/#{params[:page]}"
    end

	def index
	@video = Video.last
	end
end
