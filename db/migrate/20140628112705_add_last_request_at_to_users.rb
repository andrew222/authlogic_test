class AddLastRequestAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_request_at, :date_time
  end
end
