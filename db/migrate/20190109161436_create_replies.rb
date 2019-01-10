class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :user, index: true
      t.references :artical, index: true
      t.text :content
      t.integer :thumber_up_number

      t.timestamps
    end
  end
end
