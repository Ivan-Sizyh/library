class CreateReplenishments < ActiveRecord::Migration[7.0]
  def change
    create_table :replenishments do |t|
      t.references :library, foreign_key: { to_table: :bibliotekas }, null: false
      t.references :employee, foreign_key: true, null: false
      t.references :found, foreign_key: true, null: false

      t.date :date, null: false
      t.string :literature_source, null: false
      t.string :publishing_house, null: false
      t.date :publication_date, null: false
      t.integer :count_copies, null: false

      t.timestamps
    end
  end
end
