class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :student_id, :null => false, :references => [:students, :id]
      t.integer :subject_id, :null => false, :references => [:subjects, :id]
      t.integer :quarter
      t.integer :half
      t.integer :ann
      t.belongs_to :student
      t.belongs_to :subject

      t.timestamps null: false

    end
    
  end
end
