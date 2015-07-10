class DropUploadedfiles < ActiveRecord::Migration
  def change
    drop_table :uploadedfiles
  end
end
