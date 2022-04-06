class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new(invitation_params)
  end

  private

  def invitation_params
    params.require(:email, :message)
  end
end
