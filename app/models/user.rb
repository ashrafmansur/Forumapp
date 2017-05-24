class User < ApplicationRecord
	has_many :topics, dependent: :destroy
	has_many :comments, through: :topics
end
