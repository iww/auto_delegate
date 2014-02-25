class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :email
      t.string :telephone
      t.string :employer
      t.string :occupation
      t.boolean :mail_iw
      t.boolean :general_defense
      t.datetime :initiated_at
      t.integer :member_number
      t.integer :industrial_union
      t.integer :user_id

      t.timestamps
    end
  end
end
