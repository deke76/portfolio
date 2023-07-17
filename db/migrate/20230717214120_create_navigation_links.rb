class CreateNavigationLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :navigation_links do |t|
      t.string :file
      t.integer :order
      t.string :description
      t.references :parent, null: true, foreign_key: { to_table: :navigation_links }

      t.timestamps
    end
  end
end
