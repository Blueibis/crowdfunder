class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :user_id, uniqueness: { scope: [:project_id],
    :message => "has already pledged!" }

  validates :dollar_amount, presence: true
  validate :abra_cadaver

  def abra_cadaver
    if user_id == project.owner_id
      errors.add(:user, "cannot pledge as owner.")
    end
  end

end
