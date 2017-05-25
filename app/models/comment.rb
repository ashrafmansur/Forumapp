class Comment < ApplicationRecord

  validates_presence_of :body, :user_id, :topic_id

  belongs_to :user
  belongs_to :topic
end
