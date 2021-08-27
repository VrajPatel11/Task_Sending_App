# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :status
  validates :name, presence: true, length: { maximum: 100 }
  validates :pr, presence: true
  validates :hours, presence: true, numericality: true
end
