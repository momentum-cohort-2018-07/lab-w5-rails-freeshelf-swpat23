class Book < ApplicationRecord

  belongs_to :user

  validates :title, :author, 
            :description, :user_id, 
            presence: true

end
