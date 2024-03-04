class Restaurant < ApplicationRecord
  # dependent destroy is always in the parent, si on efface un restaurant alors toutes les reviews seront effacer.
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
