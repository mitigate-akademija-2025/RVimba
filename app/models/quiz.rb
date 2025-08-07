class Quiz < ApplicationRecord
    has_many :questions, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true

    accepts_nested_attributes_for :questions, allow_destroy: true
end
