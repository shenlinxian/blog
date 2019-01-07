class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.string :catagory
      t.integer :read_number
      t.integer :thumber_up_number

      t.timestamps
    end
  end
end
