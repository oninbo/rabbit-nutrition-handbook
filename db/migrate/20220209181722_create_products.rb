class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.column :name, :text
      t.column :description, :text
      t.timestamps
      t.add_index :name, unique: true
    end
  end
end
