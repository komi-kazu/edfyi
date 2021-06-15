class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX, message: '英字と数字の両方を含めて設定してください'

         validates :nickname, presence: true

  has_many :articles, dependent: :destroy
  has_many :article_comments
  has_many :likes

  def liked_by?(article_id)
    likes.where(article_id: article_id).exists?
  end
end
