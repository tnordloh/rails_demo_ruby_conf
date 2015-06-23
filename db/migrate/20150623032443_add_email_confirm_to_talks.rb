class AddEmailConfirmToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :email_confirmed, :boolean, :default => false
    add_column :talks, :confirm_token, :string
  end
end
