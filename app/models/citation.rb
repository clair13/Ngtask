class Citation < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :description, presence: true, 
                          length: { maximum: 200 }
end
