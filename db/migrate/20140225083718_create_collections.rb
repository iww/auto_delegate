class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :member_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :initial_fees

      t.timestamps
    end
  end
end
