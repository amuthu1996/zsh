class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :sub_id, :null => false, :uniqueness => true
      t.string :sub_name, :null => false
      t.integer :cid, :null => false, :references => [:cls, :cid]
      t.integer :tid, :null => false, :references => [:teachers, :tid]

      t.timestamps null: false
    end
  end
end
