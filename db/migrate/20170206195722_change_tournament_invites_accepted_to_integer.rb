class ChangeTournamentInvitesAcceptedToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :tournament_invites, :accepted, :integer, default: 0
  end
end
