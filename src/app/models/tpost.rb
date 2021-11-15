class Tpost < ApplicationRecord
    mount_uploader :image, ImageUploader
end
