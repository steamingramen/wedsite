class RsvpController < ApplicationController
  def index
  end

  def new
    @rsvp = Rsvp.new
    @primary_guest = @rsvp.guests.build adult: true, primary: true
    @secondary_guests = 6.times { @rsvp.guests.build }
  end

  def create
    @rsvp = Rsvp.create(rsvp_params)
    if @rsvp.save
      redirect_to rsvps_url(@rsvp)
    else
      render :new
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:email, :attending, guests_attributes: [:id, :name, :adult, :primary])
  end
end
