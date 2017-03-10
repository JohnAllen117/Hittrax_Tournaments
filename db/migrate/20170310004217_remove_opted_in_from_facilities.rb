class RemoveOptedInFromFacilities < ActiveRecord::Migration[5.0]
  def change
    remove_column :Facilities, :OptedIn, :boolean
  end
end
