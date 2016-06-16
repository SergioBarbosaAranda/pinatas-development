class SubType < ActiveRecord::Base
	belongs_to :type_of_article
	has_many :articles

	validates :name, presence: true
	validates :type_of_article_id, presence: true

	delegate :name , to: :type_of_article, allow_nil: false, prefix: :article_type
end
