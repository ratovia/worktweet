class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.datetime :metadata
      t.text :image_url
      t.text :summary
      t.text :site_url
      t.text :contents
      t.integer :user_id
      t.timestamps
    end
  end
end
