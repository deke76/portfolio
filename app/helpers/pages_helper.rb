module PagesHelper

  def get_offset_distance(height, skew_x)
    radians = skew_x * Math::PI / 180
    offset = Math.tan(radians)
    offset_distance = height * offset
  end

  def get_container_height(container, total_containers)
    middle = total_containers / 2
    height = (middle - container) * 40
  end

  def get_container_position(container_pos, total_containers, skew_x, right)
    left = "left: 5vw"

    if right
      height = get_container_height(container_pos, total_containers) - 10
      offset_distance = "#{get_offset_distance(height/2, skew_x)}vh"
      left_calc = "calc(55vw + #{offset_distance})"
      left = "left: #{left_calc}"
      width = "width: calc(95vw - #{left_calc})"
      padding = "padding-left: 1vw"
    else
      height = get_container_height(container_pos, total_containers) + 10
      offset_distance = "#{get_offset_distance(height/2, skew_x)}vh"
      width = "width: calc(40vw + #{offset_distance})"
      padding = "padding-right: 1vw"
    end
    style = "#{left}; #{width}; #{padding}"
  end

  def get_navbar_position(position)
    class_name = position.nil? ? "" : "container__nav__#{position}"
  end

end
