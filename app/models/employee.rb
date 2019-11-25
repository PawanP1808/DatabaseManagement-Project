class Employee < ApplicationRecord
    has_many :reservations
      belongs_to :branches
      
end
