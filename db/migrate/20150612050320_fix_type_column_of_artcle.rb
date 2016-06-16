class FixTypeColumnOfArtcle < ActiveRecord::Migration
  def self.up
    rename_column :articles, :type, :type_of_article_id
  end

  def self.down
    rename_column :articles, :type_of_article_id, :type
  end
end
