class CreateJoinTableStudentAttendance < ActiveRecord::Migration
  def change
    create_join_table :students, :attendances do |t|
      t.index [:student_id, :attendance_id]
      # t.index [:attendance_id, :student_id]
    end
  end
end
