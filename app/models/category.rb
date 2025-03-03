class Category < ApplicationRecord
  with_option presence: true do
    validates :name
    validates :color
  end
end
