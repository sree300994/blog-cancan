class Article < ActiveRecord::Base

	has_many :article_categories
	has_many :categories, through: :article_categories
	has_many :comments
	belongs_to :user

	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]
	validates :title, :body, presence: true

	# custom validations
	validate :check_published_date, on: :create

	private

	def check_published_date
		if self.published_date < Date.today
			self.errors.add(:published_date, "cannot be less than today")
		end
	end
end
