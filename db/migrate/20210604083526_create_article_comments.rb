class CreateArticleComments < ActiveRecord::Migration[6.0]
  def change
    create_table :article_comments do |t|
      t.integer :user_id
      t.integer :article_id
      t.text :text
      t.timestamps
    end
  end
end
