class Reservation < ApplicationRecord
    belongs_to :customer
    belongs_to :vehicle
    belongs_to :employee
    belongs_to :branch
end
