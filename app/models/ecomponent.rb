class Ecomponent < ApplicationRecord
  validates :name, :unity, presence: true
end
