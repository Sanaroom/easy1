class Comment < ApplicationRecord
  with_options presence: true do
    validates :user
    validates :board
  end

  belongs_to :user
  has_many :checks
  
  

end
