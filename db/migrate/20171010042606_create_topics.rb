class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :company_link
      t.string :content
      t.integer :status
      t.string :title
      t.string :tag
      t.string :cover

      t.timestamps
    end
  end
end
