class TweetSkill < ApplicationRecord
  belongs_to :tweet
  belongs_to :skill
  belongs_to :user
end
