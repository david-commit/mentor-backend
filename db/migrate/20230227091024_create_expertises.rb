class CreateExpertises < ActiveRecord::Migration[7.0]
  def change
    create_table :expertises do |t|
      t.string :field
      t.integer :seniority_id, null: true
      t.timestamps
    end
  end
end
