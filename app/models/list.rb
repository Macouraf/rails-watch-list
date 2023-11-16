class List < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
