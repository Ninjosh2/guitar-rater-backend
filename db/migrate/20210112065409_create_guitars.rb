class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :description
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
