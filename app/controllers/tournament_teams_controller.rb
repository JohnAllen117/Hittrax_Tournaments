class TournamentTeamsController < ApplicationController
  def new
    @tournament_team = TournamentTeam.new
    @remote_tournament = RemoteTournament.find_by(id: params[:remote_tournament_id])
    @facility = Facility.find_by(SId: params[:facility_id])
    @teams = @facility.teams.map {|x| [x[:Name], x[:MasterID]]}
  end

  def create
    tournament_teams = params[:tournament_team][:team_master_id].reject { |x| x.empty? }
    remote_tournament = RemoteTournament.find_by(id: params[:tournament_team][:remote_tournament_id])
    facility = Facility.find_by(id: params[:tournament_team][:facility_id])
    tournament_invite = TournamentInvite.find_by(facility_id: facility.id, remote_tournament_id: remote_tournament.id)
    tournament_teams.each do |t|
      t = TournamentTeam.new(team_master_id: t, remote_tournament_id: remote_tournament.id, TS: DateTime.now, team_name: Team.find_by(MasterId: t).Name)
      if t.valid?
        t.save!
      else
        flash[:notice] = "Failed to invite some teams"
        redirect_to new_remote_tournament_path
      end
    end
    tournament_invite.accepted!

    n = tournament_invite.notification
    n.seen = true
    n.save

    redirect_to remote_tournament_path(tournament_invite.remote_tournament)
  end
end
