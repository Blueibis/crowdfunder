class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :dollar_amount, presence: true
  validate :abra_cadaver

  def abra_cadaver
    if user_id == project.owner_id
      errors.add(:user, "cannot pledge as owner.")
    end
   end
end
