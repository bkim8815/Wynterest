class ImagesController < ApplicationController
  def show
    # if params[:url]
    @image=Image.find_or_create_by(url: params[:url])

    # else
    # Image.find(params[:id])
  end

  def index
    if params[:search].nil?
      @search = "wyncode"
      @profile = Image.new.get_profile("wyncode")
    else
      @search = params[:search]
      @profile = Image.new.get_profile(@search)
    end
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
    if @image.save
      redirect_to image_show_path
    else
      render :new
    end

  end

  private

  def image_params
    params.require(:image).permit(:url)
  end
end
