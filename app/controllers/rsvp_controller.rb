class RsvpController < ApplicationController
  def index
  end

  def new
    @rsvp = Rsvp.new
    6.times { @rsvp.guests.build }
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
    params.require(:rsvp).permit(:email, guests_attributes: [:id, :name, :adult, :_destroy])
  end
end
