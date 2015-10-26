class CreateCls < ActiveRecord::Migration
  def change
    create_table :cls do |t|
      
      t.integer :std, :null => false
      t.string :sec, :null => false
      t.integer :teacher_id, :null => false, :references => [:teachers, :id]
      t.string :room
      t.belongs_to :teacher

      t.timestamps null: false
      
    end
    
  end
end
