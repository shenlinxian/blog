class DestroryPassages < ActiveRecord::Migration
  def change
    drop_table :passages
  end
end
