class ChangeSiteIdToFacilityId < ActiveRecord::Migration[5.0]
  def change
    rename_column :tournament_invites, :site_id, :facility_id
  end
end
