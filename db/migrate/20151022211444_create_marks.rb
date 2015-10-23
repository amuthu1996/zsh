class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :sid, :null => false, :references => [:students, :sid]
      t.integer :sub_id, :null => false, :references => [:subjects, :sub_id]
      t.integer :quarter
      t.integer :half
      t.integer :ann

      t.timestamps null: false
    end
  end
end
