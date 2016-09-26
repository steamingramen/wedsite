class RsvpController < ApplicationController
  def index
  end

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.create(rsvp_params)
    if @rsvp.save
      redirect_to rsvps_url(@rsvp)
    else
      render 'new'
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:name, :email, :adult_count, :child_count)
  end
end
