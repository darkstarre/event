class RsvpsController < ApplicationController
  def create
    @affair = Affair.find(params[:affair_id])
    @rsvp = @affair.rsvps.create(rsvp_params)

    redirect_to affair_path(@affair)
  end

  private
    def rsvp_params
      params.require(:rsvp).permit(:guest, :body)
    end
end
