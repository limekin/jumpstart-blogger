class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|

      t.attachment :image
      t.timestamps
    end
  end
end
