class Video < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :clip
    has_one_attached :thumbnail
    belongs_to :user
end
