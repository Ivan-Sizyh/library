class CreateBibliotekas < ActiveRecord::Migration[7.0]
  def change
    create_table :bibliotekas do |t|
      t.string :title, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.references :type, foreigin_key: true

      t.timestamps
    end
  end
end
