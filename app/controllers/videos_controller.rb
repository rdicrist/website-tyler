class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:notice] = "Successfully uploaded video!"
      redirect_to video_path(@video)
    else
      flash[:alert] = "Error uploading video!"
      render :new
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      flash[:notice] = "Successfully updated video!"
      redirect_to videos_path
    else
      flash[:alert] = "Error udpating video!"
      render :new
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:notice] = "Successfully destroyed video!"
    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :video)
  end
end
