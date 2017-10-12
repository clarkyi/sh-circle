class AddNikenameWithInUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nikename, :string
  end
end
