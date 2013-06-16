class SlidesController < ApplicationController
	  def create
    @status = Status.find(params[:status_id])
    @slide = @status.slides.create(params[:slide])
    redirect_to status_path(@status)
   end

   	  def destroy
    @status = Status.find(params[:status_id])
    @slide = @status.slides.find(params[:id])
    @slide.destroy
    redirect_to status_path(@status)
  end

  def edit
    @status = Status.find(params[:status_id])
    @slide = @status.slides.find(params[:id])
  end

def update
    @status = Status.find(params[:status_id])
    @slide = @status.slides.find(params[:id])
    @slide.update_attributes(params[:slide])
    redirect_to @status
  end

end
