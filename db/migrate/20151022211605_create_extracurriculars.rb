class CreateExtracurriculars < ActiveRecord::Migration
  def change
    create_table :extracurriculars, id: false do |t|
      t.integer :sid, :null => false, :references => [:students, :sid]
      t.string :activity
      t.belongs_to :student

      t.timestamps null: false

    end
    execute "ALTER TABLE extracurriculars ADD PRIMARY KEY (sid,activity);"
  end
end
