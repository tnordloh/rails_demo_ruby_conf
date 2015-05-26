class AddAccessToUser < ActiveRecord::Migration
  def change
    add_column :users, :access, :string, default: "submitter", null: false
  end
end
