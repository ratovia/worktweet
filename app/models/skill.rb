class Skill < ApplicationRecord
  has_many :tweets, through: :tweet_skills
  has_many :tweet_skills
  accepts_nested_attributes_for :tweet_skills
end
