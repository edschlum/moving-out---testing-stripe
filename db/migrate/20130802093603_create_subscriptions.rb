class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :meuble_id
      t.string :email

      t.timestamps
    end
  end
end
