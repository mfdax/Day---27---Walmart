class Thought < ActiveRecord::Base

  # validates :content,
  # presence: true,
  # length: {maximum: 142},
  # uniqueness: {message: "Deja vu.  This is the second time you thought that"}

  mount_uploader :photo, PhotoUploader
end
