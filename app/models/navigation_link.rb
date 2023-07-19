class NavigationLink < ApplicationRecord
  has_many :children, class_name: "NavigationLink", foreign_key: "parent_id", dependent: :destroy
  belongs_to :parent, class_name: 'NavigationLink', optional: true
  belongs_to :user, class_name: 'User'

  def file
    [file_name, file_type].join('.')
  end
end
