class Post < ApplicationRecord
  has_and_belongs_to_many :categories

  enum :status, {
    draft: 0,
    published: 1,
    inactive: 2
  }

  validates :title, presence: true
  validates :article, presence: true
  validates :status, presence: true
end