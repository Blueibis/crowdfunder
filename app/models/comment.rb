class Comment < ApplicationRecord
  validates :user_comment, presence: true
  validates :project_id, presence: true

  belongs_to :user
  belongs_to :project
end
