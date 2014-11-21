class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :goal
      t.string :step
      t.string :routine

      t.timestamps
    end
  end
end
