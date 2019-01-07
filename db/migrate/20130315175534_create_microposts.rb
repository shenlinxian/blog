class Createpassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :passages, [:user_id, :created_at]
  end
end
