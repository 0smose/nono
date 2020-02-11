class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
