class CreateTechbits < ActiveRecord::Migration[5.2]
  def change
    create_table :techbits do |t|
      t.string :title
      t.text :description
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end
