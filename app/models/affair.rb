class Affair < ActiveRecord::Base
  has_many :rsvps
  validates :title, presence: true,
                    length: { minimum: 5 }
  
end
