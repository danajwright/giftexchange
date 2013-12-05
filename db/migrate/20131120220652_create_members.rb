class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :interests
      t.boolean :dependent
      t.integer :s_key
      t.boolean :active

      t.timestamps
    end
  end
end
