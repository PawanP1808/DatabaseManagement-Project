class Branch < ApplicationRecord
    has_many :reservation
    has_many :vehicle
    has_many :employee
end
