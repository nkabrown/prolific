class AddEmailToHabits < ActiveRecord::Migration
  def change
    add_column :habits, :email, :string
  end
end
