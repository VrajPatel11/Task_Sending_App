class Status < ApplicationRecord
  validates :date, presence: true
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
end
