class Picture < ApplicationRecord
  has_many_attached :files
  validates_presence_of :name
  validates_length_of :name, :minimum => 1
  validate :corect_image_type

  private 

  def corect_image_type
    if files.attached? && !image.content_type.in?(%w(image/jpeg image/png ))
      errors.add(:files, 'image must be a JPEG or PNG')
    else files.attached? == false
      errors.add(:files, 'image required')
    end
  end

end
