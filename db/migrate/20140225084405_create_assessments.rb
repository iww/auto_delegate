class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :assessment_type_id
      t.integer :amount
      t.integer :collection_id

      t.timestamps
    end
  end
end
