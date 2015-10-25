class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, id: false do |t|
      t.integer :sid, :null => false, :uniqueness => true, index: true
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
    execute "ALTER TABLE students ADD PRIMARY KEY (sid);"
  end
end
