class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :occasion
      t.integer :budget
      t.datetime :send_invite
      t.datetime :reminder
      t.datetime :deadline
      t.datetime :end_date
      t.integer :user_id
    end
  end
end
