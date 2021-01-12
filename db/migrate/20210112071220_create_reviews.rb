class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :comments
      t.references :user
      t.references :guitar

      t.timestamps
    end
  end
end
