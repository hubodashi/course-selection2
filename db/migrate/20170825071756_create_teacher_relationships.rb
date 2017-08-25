class CreateTeacherRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_relationships do |t|
      t.integer :course_id
      t.integer :student_id
      t.timestamps
    end
  end
end
