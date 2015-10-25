class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks, id: false do |t|
      t.integer :sid, :null => false, :references => [:students, :sid]
      t.integer :sub_id, :null => false, :references => [:subjects, :sub_id]
      t.integer :quarter
      t.integer :half
      t.integer :ann
      t.belongs_to :student
      t.belongs_to :subject

      t.timestamps null: false

    end
    execute "ALTER TABLE marks ADD PRIMARY KEY (sid,sub_id);"
  end
end
