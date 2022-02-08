class Activity < ApplicationRecord
    has_many :childenrolls, dependent: :destroy
end
