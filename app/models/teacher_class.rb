class TeacherClass < ApplicationRecord
  belongs_to :category
  belongs_to :teacher

  has_many :lessons, dependent: :destroy
  accepts_nested_attributes_for :lessons

  has_one_attached :image
end
