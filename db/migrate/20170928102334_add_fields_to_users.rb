class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :college_roll, :integer
    add_column :users, :university_roll_no, :integer
    add_column :users, :year, :string
    add_column :users, :branch, :string
  end
end
