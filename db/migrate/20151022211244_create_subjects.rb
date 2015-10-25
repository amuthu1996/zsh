class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects, id: false do |t|
      t.integer :sub_id, :null => false, :uniqueness => true, index: true
      t.string :sub_name, :null => false
      t.integer :cid, :null => false, :references => [:cls, :cid]
      t.integer :tid, :null => false, :references => [:teachers, :tid]
      t.belongs_to :cl
      t.belongs_to :teacher

      t.timestamps null: false

    end
    execute "ALTER TABLE subjects ADD PRIMARY KEY (sub_id);"
  end
end
