class Attendance < ActiveHash::Base
  self.data = [
    
    { id: 1, name: '出席' },
    { id: 2, name: '欠席' },
    { id: 3, name: '遅刻' }
  ]

  include ActiveHash::Associations
  has_many :checks
  

  
  end
