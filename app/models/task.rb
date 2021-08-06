class Task < ApplicationRecord
    validates :date, presence: true
    validates :title, presence: true, length: { maximum: 100 }
    validates :pr, presence: true
    validates :hours, presence: true, numericality: { only_float: true }
end