class AddImageFilesToAttachment < ActiveRecord::Migration
  def change
      add_attachment :attachments, :image
  end
end
