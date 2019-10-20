class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :articles, :type, :category
  end
end
