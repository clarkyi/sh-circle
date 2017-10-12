class AddTopicTypeColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :topic_type, :integer
    change_column :topics, :status, :integer, default: 0
  end
end