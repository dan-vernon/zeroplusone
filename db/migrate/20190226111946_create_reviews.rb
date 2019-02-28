class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references  :booking
      t.references :user

      t.timestamps
    end
  end
end
