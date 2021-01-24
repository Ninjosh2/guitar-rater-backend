class AddPurchaseLinkToGuitars < ActiveRecord::Migration[6.0]
  def change
    add_column :guitars, :purchase_link, :string
  end
end
