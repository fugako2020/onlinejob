class AddStatusToTblApproved < ActiveRecord::Migration[7.1]
  def change
    add_column :tbl_approveds, :status, :string
    add_column :tbl_approveds, :default, :string
    add_column :tbl_approveds, :approved, :string
  end
end
