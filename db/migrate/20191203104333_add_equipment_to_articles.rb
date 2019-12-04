class AddEquipmentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :equipment, :text
  end
end
