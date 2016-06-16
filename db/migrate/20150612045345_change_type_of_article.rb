class ChangeTypeOfArticle < ActiveRecord::Migration
  def up
    change_column :articles, :type, 'integer USING CAST(type AS integer)'
  end

  def down
    change_column :articles, :type, :string
  end
end
