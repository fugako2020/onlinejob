class AddStatusToTblRegistrations < ActiveRecord::Migration[7.1]
  def change
    add_column :tbl_registrations, :status, :string, default: 'pending'
  end
end
