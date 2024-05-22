class Check < ApplicationRecord
  with_options presence: true do
    validates :user
    validates :number
    validates :attendance
  end

  belongs_to :user
end
