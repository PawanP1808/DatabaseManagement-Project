class Reservation < ApplicationRecord
    belongs_to :customers
    belongs_to :vehicles
    belongs_to :employees
    belongs_to :branches
end
