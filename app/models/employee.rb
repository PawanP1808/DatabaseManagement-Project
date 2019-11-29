class Employee < ApplicationRecord
    has_many :reservation
    has_one :user
      belongs_to :branch

end
