class Members < ActiveRecord::Migration
  def change
    add_column :members, :s_key, :string
    add_column :members, :active, :boolean
    add_column :members, :email, :string
  end
end
