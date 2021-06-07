class Tag < ApplicationRecord
  has_many :article_tags
  has_many :articles, through: :article_tags

  def self.search(search)
    if search != '#'
      tag = Tag.where(tag_name: search)
      tag[0].articles
    else
      Article.all
    end
  end
end
