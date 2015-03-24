class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :content
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :words, :categories
  end
end
