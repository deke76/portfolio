class User < ApplicationRecord
  has_many :navigation_links, class_name: "NavigationLink",
  dependent: :destroy
end
