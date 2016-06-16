class AddSubtypeidToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :sub_type_id, :integer
  end
end
