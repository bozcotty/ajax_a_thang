class Thang < ActiveRecord::Base

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 5 }, presence: true
end
