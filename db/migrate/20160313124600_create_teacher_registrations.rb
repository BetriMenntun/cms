class CreateTeacherRegistrations < ActiveRecord::Migration
  def change
    create_table :teacher_registrations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :seminar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
