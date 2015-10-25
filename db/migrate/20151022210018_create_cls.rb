class CreateCls < ActiveRecord::Migration
  def change
    create_table :cls, id: false do |t|
      t.integer :cid, :null => false, :uniqueness => true, index: true
      t.integer :std, :null => false
      t.string :sec, :null => false
      t.integer :tid, :null => false, :references => [:teachers, :tid]
      t.string :room

      t.timestamps null: false
      
    end
    execute "ALTER TABLE cls ADD PRIMARY KEY (cid);"
  end
end
