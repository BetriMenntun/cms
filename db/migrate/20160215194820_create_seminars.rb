class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :name
      t.boolean :active
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
