class AddSenderToUploads < ActiveRecord::Migration
  def change
    add_reference :uploads, :sender, index: true, foreign_key: true
  end
end
