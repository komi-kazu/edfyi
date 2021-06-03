class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :article1, null: false
      t.text :image1
      t.text :article2
      t.text :image2
      t.text :article3
      t.text :image3
      t.text :article4
      t.text :image4
      t.text :article5
      t.text :image5
      t.text :article6
      t.text :image6
      t.text :article7
      t.text :image7
      t.text :article8
      t.text :image8
      t.text :article9
      t.text :image9
      t.text :article10
      t.text :image10
      # t.integer :tag, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
