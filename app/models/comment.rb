class Comment < ApplicationRecord
  validates :board,  presence: true

  belongs_to :check
end
