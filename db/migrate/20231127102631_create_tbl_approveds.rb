class CreateTblApproveds < ActiveRecord::Migration[7.1]
  def change
    create_table :tbl_approveds do |t|
      t.string :firstname
      t.string :lastname
      t.string :birthdate
      t.string :gender
      t.string :address
      t.string :email
      t.string :file

      t.timestamps
    end
  end
end
