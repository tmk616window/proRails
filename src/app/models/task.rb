class Task < ApplicationRecord
    belongs_to :user
    has_many :prolongs, dependent: :destroy
    has_many :tools, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :contents, dependent: :destroy
    has_many :likes, dependent: :destroy
    mount_uploader :logoImage, ImageUploader
end
