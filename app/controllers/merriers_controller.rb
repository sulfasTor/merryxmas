class MerriersController < ApplicationController

  def index
    @merriers = Merrier.all
  end
  
  def new
    @merrier = Merrier.new
  end

  def show
  end

  def create
    @merrier = Merrier.new(params[:merrier])
    @merrier.request = request

    if @merrier.deliver
      flash.now[:notice] = "Successfully sent a message."
    else
      flash.now[:error] = "Cannot send message"
      render :new
    end

    
  end

  # private
  # def merrier_params
  #   params.require(:merrier).permit(:first_name, :message)
  # end



end
