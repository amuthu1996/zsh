class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances, id: false do |t|
      t.integer :sid, index: true
      t.float :attend
      t.belongs_to :student

      t.timestamps null: false

    end
    execute "ALTER TABLE attendances ADD PRIMARY KEY (sid);"
  end
end
