class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :ratings
      t.booking :references
      t.user :references

      t.timestamps
    end
  end
end
