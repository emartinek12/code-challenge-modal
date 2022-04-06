class InvitationsController < ApplicationController
  def create
    @invitation = Invitation.new(invitation_params)

    respond_to do |format|
      format.html {}# { redirect_to root_path, notice: 'Invitation was successfully sent.' }
      format.js { render :new}
     end
  end

  private

  def invitation_params
    params.require(:email, :message, :cycle_id)
  end
end
