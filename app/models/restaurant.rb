# Un restaurant doit avoir un nom, une adresse et une catégorie.
# La catégorie du restaurant doit appartenir à cette liste fixe : ["chinese", "italian", "japanese", "french", "belgian"].
# Quand un restaurant est supprimé, tous ses avis doivent aussi être supprimés.


class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
  in: %w(chinese italian japanese french belgian),
  message: "%{value} is not a valid category"
}
end
