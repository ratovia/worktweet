class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :nickname
      t.text :contents
      t.integer :tweet_id
      t.timestamps
    end
  end
end
