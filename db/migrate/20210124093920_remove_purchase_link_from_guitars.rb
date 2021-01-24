class RemovePurchaseLinkFromGuitars < ActiveRecord::Migration[6.0]
  def change
    remove_column :guitars, :purchase_link, :string
  end
end
