class CreateTblJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :tbl_jobs do |t|
      t.string :position
      t.string :description
      t.string :work_hour
      t.string :salaray_per_hour

      t.timestamps
    end
  end
end
