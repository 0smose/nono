class AddPriceToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :price, :string
  end
end
