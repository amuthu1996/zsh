class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      
      t.string :sname, :null => false
      t.date :dob, :null => false
      t.string :gender, :null => false
      t.integer :cl_id, :null => false, :references => [:cls, :id]
      t.string :fname
      t.string :mname
      t.integer :ph
      t.text :address
      t.belongs_to :cls

      t.timestamps null: false

    end
    
  end
end
