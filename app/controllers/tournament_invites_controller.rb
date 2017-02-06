class TournamentInvitesController < ApplicationController
  def index
    @tournament_invites = TournamentInvite.where(facility_id: current_user.SId)
  end

  def edit
    t = TournamentInvite.find_by(params[:id])
    t.accepted = true
    t.save
    redirect_to remote_tournament_path(t.remote_tournament)
  end
end
