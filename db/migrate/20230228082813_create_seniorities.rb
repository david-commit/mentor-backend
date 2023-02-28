class CreateSeniorities < ActiveRecord::Migration[7.0]
  def change
    create_table :seniorities do |t|
      t.string :level
      t.integer :expertise_id
      t.timestamps
    end
  end
end
