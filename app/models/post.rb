class Post < ApplicationRecord
	validates :title, :context, presence: true
    validates :title, length: { minimum: 7 }
  	belongs_to :blog
  	has_many :messages, dependent: :destroy
end
