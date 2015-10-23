class CreateCls < ActiveRecord::Migration
  def change
    create_table :cls do |t|
      t.integer :cid, :null => false, :uniqueness => true
      t.integer :std, :null => false
      t.string :sec, :null => false
      t.integer :tid, :null => false, :references => [:teachers, :tid]
      t.string :room

      t.timestamps null: false
    end
  end
end
