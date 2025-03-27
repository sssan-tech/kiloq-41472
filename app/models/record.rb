class Record < ApplicationRecord
  with_options presence: true do
    validates :recorded_at
    validates :category_id
  end

  belongs_to :category
end
