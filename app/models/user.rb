class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true

  has_many :articles, dependent: :destroy
  has_many :article_comments
  has_many :likes

  def liked_by?(article_id)
    likes.where(article_id: article_id).exists?
  end
end
