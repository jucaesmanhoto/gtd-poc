class ChangeIntegerLimitInDurations < ActiveRecord::Migration[6.0]
  def change
    change_column :durations, :milliseconds, :integer, limit: 8
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
