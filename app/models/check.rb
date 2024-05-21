class Check < ApplicationRecord
  with_options presence: true do
    validates :number
    validates :attendance
  end

  has_many :comments
end
