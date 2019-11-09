class Branch < ApplicationRecord
    has_many :reservations
    has_many :vehicles
end
