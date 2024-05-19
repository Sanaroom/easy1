class Check < ApplicationRecord
  with_options presence: true do
    validates :number_id
    validates :attendance_id
  end



  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number
  validates :number_id, numericality: { other_than: 1, message: "can't be blank" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :attendance
  validates :attendance_id, numericality: { other_than: 1, message: "can't be blank" }
end
