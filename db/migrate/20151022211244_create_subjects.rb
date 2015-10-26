class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      
      t.string :sub_name, :null => false
      t.integer :cl_id, :null => false, :references => [:cls, :id]
      t.integer :teacher_id, :null => false, :references => [:teachers, :id]
      t.belongs_to :cl
      t.belongs_to :teacher

      t.timestamps null: false

    end
    
  end
end
