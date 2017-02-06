class TournamentInvitesController < ApplicationController
  def index
    @tournament_invites = TournamentInvite.where(facility_id: current_user.SId, accepted: 0)
  end

  def edit
    t = TournamentInvite.find_by(id: params[:id])
    t.accepted = params[:accepted].to_i
    if t.save
      flash[:notice] = "Invite Accepted"
      redirect_to remote_tournament_path(t.remote_tournament)
    else
      flash[:notice] = "Sorry, an error has occured."
      redirect_to tournament_invites_path
    end
  end
end
