class Article < ActiveRecord::Base
    has_many :comments
    has_many :attachments

    has_many :taggings
    has_many :tags, through: :taggings

    def tag_list
	tags.collect(&:name).join ','
    end

    def tag_list=(tag_names)
	uniq_tag_names = tag_names.split(',').map { |tag| tag.strip.downcase }.uniq
	tag_instances = uniq_tag_names.map do |tag_name|
	    Tag.find_or_create_by(name: tag_name)
	end

	self.tags = tag_instances
    end

    def image=(image)
	
	attachments.new( image: image )
    end
end
