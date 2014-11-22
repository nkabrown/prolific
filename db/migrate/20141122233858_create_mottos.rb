class CreateMottos < ActiveRecord::Migration
  def change
    create_table :mottos do |t|
      t.text :content
      t.string :email

      t.timestamps
    end
  end
end
