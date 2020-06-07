class Picture < ApplicationRecord
  has_many_attached :files
  validates_presence_of :name
  validates_length_of :name, :minimum => 1
end
