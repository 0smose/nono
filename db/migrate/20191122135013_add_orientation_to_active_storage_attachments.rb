class AddOrientationToActiveStorageAttachments < ActiveRecord::Migration[5.2]
  def change
    add_column :active_storage_attachments, :orientation, :integer
  end
end
