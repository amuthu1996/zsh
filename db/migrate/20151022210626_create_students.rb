class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :sid, :null => false, :uniqueness => true
      t.string :sname, :null => false
      t.date :dob, :null => false
      t.string :gender, :null => false
      t.integer :cid, :null => false, :references => [:cls, :cid]
      t.string :fname
      t.string :mname
      t.integer :ph
      t.text :address

      t.timestamps null: false
    end
  end
end
