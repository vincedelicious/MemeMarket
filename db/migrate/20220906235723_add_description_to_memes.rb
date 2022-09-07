class AddDescriptionToMemes < ActiveRecord::Migration[7.0]
  def change
    add_column :memes, :description, :text
  end
end
