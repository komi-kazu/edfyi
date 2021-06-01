class Question < ApplicationRecord
  validates :title,presence: true
  validates :question1,presence: true

end
