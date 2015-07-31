class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.string :lecturer_id
      t.string :student_id
      t.string :course_id
      t.string :room_number

      t.timestamps null: false
    end
  end
end
