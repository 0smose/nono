class AddDurationToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :duration, :string
  end
end
