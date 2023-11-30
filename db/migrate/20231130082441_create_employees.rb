class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :library, foreign_key: { to_table: :bibliotekas }, null: false
      t.string :name, null: false
      t.string :surname, null: false
      t.date :birthday, null: false
      t.integer :start_of_work_year, null: false
      t.string :education, null: false
      t.integer :salary, null: false

      t.timestamps
    end
  end
end
