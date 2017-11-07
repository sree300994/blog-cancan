class Category < ActiveRecord::Base

	has_many :article_categories
	has_many :articles, through: :article_categories

	include FriendlyId
	friendly_id :name, use: [:slugged, :finders]
	validates_presence_of :name
end
