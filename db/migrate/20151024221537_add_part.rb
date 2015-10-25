class AddPart < ActiveRecord::Migration
  def change
  	execute "ALTER TABLE cls ADD FOREIGN KEY (tid) REFERENCES teachers(tid);"
  	execute "ALTER TABLE students ADD FOREIGN KEY (cid) REFERENCES cls(cid);"
  	execute "ALTER TABLE subjects ADD FOREIGN KEY (tid) REFERENCES teachers(tid);"
  	execute "ALTER TABLE subjects ADD FOREIGN KEY (cid) REFERENCES cls(cid);"
  	execute "ALTER TABLE marks ADD FOREIGN KEY (sid) REFERENCES students(sid);"
  	execute "ALTER TABLE marks ADD FOREIGN KEY (sub_id) REFERENCES subjects(sub_id);"
  	execute "ALTER TABLE attendances ADD FOREIGN KEY (sid) REFERENCES students(sid);"
  	execute "ALTER TABLE extracurriculars ADD FOREIGN KEY (sid) REFERENCES students(sid);"
  end
end
