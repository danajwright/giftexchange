class AddGoesByColumnToMembers < ActiveRecord::Migration
  def change
    add_column :members, :goes_by, :string
  end
end
