class CreateClassreps < ActiveRecord::Migration
  def change
    create_table :classreps do |t|
      t.string :fname
      t.string :lname
      t.string :college
      t.string :program
      t.integer :year
      t.integer :student_number

      t.timestamps null: false
    end
  end
end
