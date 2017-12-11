class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  scope :search, -> (author_param) { where("author like ?", "%#{author_param}")}
end
