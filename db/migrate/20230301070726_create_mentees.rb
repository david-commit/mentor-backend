class CreateMentees < ActiveRecord::Migration[7.0]
  def change
    create_table :mentees do |t|
      t.string :full_name
      t.date :dob
      t.string :email
      t.integer :phone
      t.text :bio
      t.string :title
      t.string :organization
      t.string :country
      t.string :language
      t.string :expertise
      t.string :gender
      t.string :top_goal

      t.timestamps
    end
  end
end
