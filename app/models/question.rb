class Question < ApplicationRecord
  validates :title,presence: true
  validates :question,presence: true
end
