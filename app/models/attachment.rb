class Attachment < ActiveRecord::Base
    belongs_to :article
    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/png", "image/jpeg"]
end
