class ImageTestsController < ApplicationController
  def index
    @image = ImageTest.new
    @images = ImageTest.all
  end

  def create 
    @image = ImageTest.new(image_params)
    @image.save
  end

  private
  def image_params
    params.require(:image_test).permit(:image)
  end

end
