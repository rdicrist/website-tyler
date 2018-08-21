class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "Successfully uploaded picture!"
      redirect_to picture_path(@picture)
    else
      flash[:alert] = "Error uploading picture!"
      render :new
    end
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      flash[:notice] = "Successfully updated picture!"
      redirect_to pictures_path
    else
      flash[:alert] = "Error udpating picture!"
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :picture)
  end
end
