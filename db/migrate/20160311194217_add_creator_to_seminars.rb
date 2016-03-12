class AddCreatorToSeminars < ActiveRecord::Migration
  def change
    add_reference :seminars, :user, index: true, foreign_key: true
  end
end
