class Image < ActiveRecord::Base
  belongs_to :ThemeTitle
	has_attached_file :content, styles: {
		medium: '300x300>'
		small: '140x140>'
	}
	validates_attachment_content_type :content, :content_type /\Aimage\/.*\Z/
end
