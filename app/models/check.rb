class Check < ApplicationRecord
  with_options presence: true do
    validates :user
    validates :number_id
    validates :attendance_id
  end

  validates :number_id, numericality: { other_than: 0, message: "can't be blank"} 
  validates :attendance_id, numericality: { other_than: 0 , message: "can't be blank"} 


  belongs_to :user
  has_many :comments
 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :attendance

  

end
