class AddPostionToTblAppoved < ActiveRecord::Migration[7.1]
  def change
    add_column :tbl_approveds, :position, :string
  end
end
