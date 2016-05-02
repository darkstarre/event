class Affair < ActiveRecord::Base
  has_many :rsvps, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  
end
