class Topic < ApplicationRecord

	validates_presence_of :title, :body, :user_id

	belongs_to :user
	has_many :comments, dependent: :destroy

end
