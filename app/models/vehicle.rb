class Vehicle < ApplicationRecord
    has_one :reservation
    belongs_to :branches
    belongs_to :color
end
