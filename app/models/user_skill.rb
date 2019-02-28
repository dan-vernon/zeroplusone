class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :skill, inclusion: { in: Skill.all }
  # validate :is_hero?
  # validates_uniqueness_of :skill_id, scope: :user_id

  # def is_hero?
  #   unless user.hero
  #     errors.add(:user_id, "UserSkill owner must be a hero")
  #   end
  # end
end
