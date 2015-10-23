class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :tid, :null => false, :uniqueness => true
      t.string :tname
      t.date :doj
      t.string :gender
      t.integer :exp
      t.integer :ph
      t.text :address

      t.timestamps null: false
    end
  end
end
