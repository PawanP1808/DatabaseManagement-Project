class Employee < ApplicationRecord
    has_many :reservation
      belongs_to :branch

end
