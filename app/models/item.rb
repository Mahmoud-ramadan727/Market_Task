class Item < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :orders

    mount_uploaders :images, AvatarUploader
end
