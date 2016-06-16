class CreateTypeOfArticles < ActiveRecord::Migration
  def change
    create_table :type_of_articles do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
