class RsvpsController < ApplicationController

  #http_basic_authenticate_with name: "dhh", password: "secret", only: destroy
  
  def create
    @affair = Affair.find(params[:affair_id])
    @rsvp = @affair.rsvps.create(rsvp_params)

    redirect_to affair_path(@affair)
  end

  def destroy
    @affair = Affair.find(params[:affair_id])
    @rsvp = @affair.rsvps.find(params[:id])
    @rsvp.destroy

    redirect_to affair_path(@affair)
  end

  private
    def rsvp_params
      params.require(:rsvp).permit(:guest,:email,:body)
    end
end
