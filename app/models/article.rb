class Article < ActiveRecord::Base

	validates :title, :body, presence: true

	# custom validations
	validate :check_published_date

	private

	def check_published_date
		if self.published_date < Date.today
			self.errors.add(:published_date, "cannot be less than today")
		end
	end
end
