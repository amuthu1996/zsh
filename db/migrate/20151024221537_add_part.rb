class AddPart < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
      	execute "ALTER TABLE cls ADD CONSTRAINT clsfr FOREIGN KEY (teacher_id) REFERENCES teachers(id);"
      	execute "ALTER TABLE students ADD CONSTRAINT stdfr FOREIGN KEY (cl_id) REFERENCES cls(id);"
      	execute "ALTER TABLE subjects ADD CONSTRAINT subfr FOREIGN KEY (teacher_id) REFERENCES teachers(id);"
      	execute "ALTER TABLE subjects ADD CONSTRAINT subfr2 FOREIGN KEY (cl_id) REFERENCES cls(id);"
      	execute "ALTER TABLE marks ADD CONSTRAINT mkfr FOREIGN KEY (student_id) REFERENCES students(id);"
      	execute "ALTER TABLE marks ADD CONSTRAINT mkfr2 FOREIGN KEY (subject_id) REFERENCES subjects(id);"
      	execute "ALTER TABLE attendances ADD CONSTRAINT attfr FOREIGN KEY (student_id) REFERENCES students(id);"
      	execute "ALTER TABLE extracurriculars ADD CONSTRAINT exfr FOREIGN KEY (student_id) REFERENCES students(id);"
      end
      dir.down do
        execute "ALTER TABLE cls DROP CONSTRAINT clsfr;"
        execute "ALTER TABLE students DROP CONSTRAINT stdfr;"
        execute "ALTER TABLE subjects DROP CONSTRAINT subfr;"
        execute "ALTER TABLE subjects DROP CONSTRAINT subfr2;"
        execute "ALTER TABLE marks DROP CONSTRAINT mkfr;"
        execute "ALTER TABLE marks DROP CONSTRAINT mkfr2;"
        execute "ALTER TABLE attendances DROP CONSTRAINT attfr;"
        execute "ALTER TABLE extracurriculars DROP CONSTRAINT exfr;"
      end
    end


  end
end
