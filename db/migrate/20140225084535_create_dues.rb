class CreateDues < ActiveRecord::Migration
  def change
    create_table :dues do |t|
      t.integer :collection_id
      t.integer :max
      t.integer :reg
      t.integer :min
      t.integer :sub

      t.timestamps
    end
  end
end
