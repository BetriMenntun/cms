class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :profile
      t.text :bio
      t.boolean :active
      t.references :usertype, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
