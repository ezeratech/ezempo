class AddMoreFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string
    add_column :users, :contact_number, :string
    add_column :users, :date_of_birth, :string
  end
end
