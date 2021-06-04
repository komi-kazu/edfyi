class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :question, null: false
      t.text :image1_id
      t.text :question2
      t.text :image2_id
      t.text :question3
      t.text :image3_id
      t.text :question4
      t.text :image4_id
      t.text :question5
      t.text :image5_id
      t.text :question6
      t.text :image6_id
      t.text :question7
      t.text :image7_id
      t.text :question8
      t.text :image8_id
      t.text :question9
      t.text :image9_id
      t.text :question10
      t.text :image10_id
      # t.integer :tag, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
