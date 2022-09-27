class CreateReview < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.decimal :score 
      t.references :movie, foreign_key: true
      t.timestamps
    end
  end
end
