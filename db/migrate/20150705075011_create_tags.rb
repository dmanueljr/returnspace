class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.string :tag_value
      t.references :upload, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
