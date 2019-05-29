class CreateTweetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :tweet_skills do |t|
      t.references :tweet, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
