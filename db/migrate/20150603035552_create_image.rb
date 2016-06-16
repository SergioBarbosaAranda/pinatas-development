class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :article_id
      t.string :url
    end
  end
end
