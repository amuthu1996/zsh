class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :sid, :null => false, :references => [:students, :sid]
      t.float :attend

      t.timestamps null: false
    end
  end
end
