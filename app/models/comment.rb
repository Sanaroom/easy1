class Comment < ApplicationRecord
  validates :board,  presence: true

  
end
