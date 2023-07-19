class CreateNavigationLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :navigation_links do |t|
      t.belongs_to :user
      t.string "file_name", null: false
      t.string "file_type", null: false
      t.string "description", null: false
      t.integer "container_order", null: false
      t.references :parent, foreign_key: { to_table: :navigation_links }

      t.timestamps
    end
  end
end
