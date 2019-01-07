class AddColumnTopassages < ActiveRecord::Migration
  def change
    add_column :passages, :title, :string
    add_column :passages, :catagory, :string
    add_column :passages, :read_number, :integer
    add_column :passages, :thump_up_number, :integer


  end
end
