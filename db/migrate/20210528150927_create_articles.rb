class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :article1, null: false
      t.text :image1_id
      t.text :article2
      t.text :image2_id
      t.text :article3
      t.text :image3_id
      t.text :article4
      t.text :image4_id
      t.text :article5
      t.text :image5_id
      t.text :article6
      t.text :image6_id
      t.text :article7
      t.text :image7_id
      t.text :article8
      t.text :image8_id
      t.text :article9
      t.text :image9_id
      t.text :article10
      t.text :image10_id
      t.text :article11
      # t.integer :tag, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
