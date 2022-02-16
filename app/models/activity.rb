class Activity < ApplicationRecord
    has_many :childenrolls, dependent: :destroy

    validates :title, presence: true
end
