class AddUserIdToTweetSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :tweet_skills, :user_id, :integer
  end
end
