class Post < ActiveRecord::Base
	has_many :comments

	validates :title, presence: true
	validates :content, presence: true

	def display_comments
		return 'No comments yet' if comments.none?
		comments.map(&:remark)
	end

end
