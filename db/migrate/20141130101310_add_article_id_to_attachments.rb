class AddArticleIdToAttachments < ActiveRecord::Migration
  def change
      add_column :attachments, :article_id, :interger
  end
end
