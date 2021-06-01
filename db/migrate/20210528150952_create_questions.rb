class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :question, null: false
      t.text :image1
      t.text :question2
      t.text :image2
      t.text :question3
      t.text :image3
      t.text :question4
      t.text :image4
      t.text :question5
      t.text :image5
      t.text :question6
      t.text :image6
      t.text :question7
      t.text :image7
      t.text :question8
      t.text :image8
      t.text :question9
      t.text :image9
      t.text :question10
      t.text :image10
      # t.integer :tag, null: false
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
