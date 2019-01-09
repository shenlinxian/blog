class DestroryPassages < ActiveRecord::Migration

  # rails g migration destrory_passages
  def change
    drop_table :passages
  end
end
