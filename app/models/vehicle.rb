class Vehicle < ApplicationRecord
    has_one :reservation
    belongs_to :branch
    belongs_to :color
end
