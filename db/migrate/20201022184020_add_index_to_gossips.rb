class AddIndexToGossips < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :hastag, foreign_key: true
  end
end
