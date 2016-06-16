class TypeOfArticle < ActiveRecord::Base
	has_many :articles, dependent: :destroy
	has_many :sub_types, dependent: :destroy

	validates :name, presence: true
	validates :image, presence: true
end
