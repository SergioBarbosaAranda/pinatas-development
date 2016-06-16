class CreateSubTypes < ActiveRecord::Migration
  def change
    create_table :sub_types do |t|
      t.string :name
      t.text :description
      t.integer :type_of_article_id

      t.timestamps null: false
    end
  end
end
