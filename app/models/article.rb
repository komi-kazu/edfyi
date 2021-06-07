class Article < ApplicationRecord
  belongs_to :user
  has_many :article_comments
  has_many :article_tags
  has_many :tags, through: :article_tags

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

  def tags_save(tag_list)
    if self.tags != nil
      article_tags_records = ArticleTag.where(article_id: self.id)
      article_tags_records.destroy_all
    end

    tag_list.each do |tag|
      inspected_tag = Tag.where(tag_name: tag).first_or_create
      self.tags << inspected_tag
    end
  end

  def self.search(search)
    if search != ""
      Article.where('title LIKE(?) ', "%#{search}%")
    else
      Article.all
    end
  end

end
