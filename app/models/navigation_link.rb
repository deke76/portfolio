class NavigationLink < ApplicationRecord
  has_many :children, class_name: "NavigationLink", foreign_key: "parent_id", dependent: :destroy
  belongs_to :parent, class_name: 'NavigationLink', optional: true
  belongs_to :user, class_name: 'User'

  def file
    [file_name, file_type].join('.')
  end

  def self.nav_links(user)
    user_links = self.where(user_id: user)
    links = {
      :navbar => user_links
                     .sort_by { |link| link.container_order }
                     .select { |link| !link.parent_id }
    }
    
    links[:navbar].each { |nav_link|
      links[nav_link.description] = user_links.select { 
        |link| link[:parent_id] == nav_link.id
      }
    }
    return links
  end
end
