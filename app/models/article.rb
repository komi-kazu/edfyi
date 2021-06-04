class Article < ApplicationRecord
  attachment :image1
  attachment :image2
  attachment :image3
  attachment :image4
  attachment :image5
  attachment :image6
  attachment :image7
  attachment :image8
  attachment :image9
  attachment :image10

  validates :title,presence: true
  validates :article1,presence: true

end
