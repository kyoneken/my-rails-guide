class Article < ApplicationRecord
  include Visible

  has_many :comments

  validate :title, presence: true
  validate :body, presence: true, length: { minimum: 10 }
end
