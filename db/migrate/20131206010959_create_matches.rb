class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :secret_santa_id
      t.integer :member_id

      t.timestamps
    end
  end
end
