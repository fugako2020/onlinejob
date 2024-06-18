class AddPositionToTblRegistration < ActiveRecord::Migration[7.1]
  def change
    add_column :tbl_registrations, :position, :string
  end
end
