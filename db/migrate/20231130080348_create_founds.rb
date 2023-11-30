class CreateFounds < ActiveRecord::Migration[7.0]
  def change
    create_table :founds do |t|
      t.references :library, foreign_key: { to_table: :bibliotekas }, null: false
      t.string :title, null: false
      t.integer :count_books, default: 0, null: false
      t.integer :count_journals, default: 0, null: false
      t.integer :count_newspapers, default: 0, null: false
      t.integer :count_sbornikov, default: 0, null: false
      t.integer :count_dissertations, default: 0, null: false
      t.integer :count_referats, default: 0, null: false


      t.timestamps
    end
  end
end
