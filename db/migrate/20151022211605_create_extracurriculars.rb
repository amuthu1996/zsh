class CreateExtracurriculars < ActiveRecord::Migration
  def change
    create_table :extracurriculars do |t|
      t.integer :sid, :null => false, :references => [:students, :sid]
      t.string :activity
      t.belongs_to :student

      t.timestamps null: false

    end
    
  end
end
