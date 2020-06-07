class Picture < ApplicationRecord
  has_many_attached: :files
end
