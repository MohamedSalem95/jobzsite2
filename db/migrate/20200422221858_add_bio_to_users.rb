class AddBioToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bio, :text, null: true
  end
end
