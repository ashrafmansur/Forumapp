class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

	class << self

	  
	end


end
