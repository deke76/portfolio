class User < ApplicationRecord
  has_one_attached :profile_photo
  has_one_attached :avatar
  has_one_attached :resume
  has_many :navigation_links, class_name: "NavigationLink",
  dependent: :destroy
end
