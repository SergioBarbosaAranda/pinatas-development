class Article < ActiveRecord::Base
	has_many :images, dependent: :destroy
	belongs_to :type_of_article
	belongs_to :sub_type
	validates :name , presence: true
	validates :price , numericality: true

	delegate :name, to: :type_of_article, allow_nil: false, prefix: :article_type
	delegate :name, to: :sub_type, allow_nil: false, prefix: :article_subtype
end
