class AddUserIdToDenim < ActiveRecord::Migration[6.1]
  def change
    add_column :denims, :user_id, :integer
  end
end
