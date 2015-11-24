class AddUseridToFunction < ActiveRecord::Migration
  def change
    add_column :functions, :user_id, :integer
  end
end
