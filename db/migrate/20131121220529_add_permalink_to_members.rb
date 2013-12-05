class AddPermalinkToMembers < ActiveRecord::Migration
  def change
    add_column :members, :permalink, :string
  end
end
