class Category < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :color
  end

  has_many :records
end
