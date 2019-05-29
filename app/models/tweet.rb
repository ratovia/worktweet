class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments

  has_many :tweet_skills
  has_many :skills, through: :tweet_skills

  def tweet_countA
    Tweet.all.length
  end

  def self.tweet_countB
    Tweet.all.length
  end
end
