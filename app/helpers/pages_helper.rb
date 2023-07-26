module PagesHelper
  def get_num_of_links(link_array)
    number_of_links = 0
    link_array.each_value do |link|
      if link.length > number_of_links
        number_of_links = link.length
      end
    end
    number_of_links
  end

  def get_offset_percentage(index, offset_degrees, side)
    if side == 'right'
      index = 4 - index
    end
    offset_radians = offset_degrees.to_f * Math::PI / 180.0
    offset_percentage = (index + 1) / Math.tan(offset_radians)
    width = 90 + offset_percentage
    return "width: #{width}%;"
  end

  def get_container_widths(num_of_containers, offset_degrees, side)
    container_widths = []
    offset_radians = offset_degrees.to_f * Math::PI / 180.0
    puts "offset_radians: #{offset_radians}"
    (1..num_of_containers).each do |index|
      if side == 'right'
        index = num_of_containers - index + 1
      end
      offset_percentage = index / Math.tan(offset_radians)
      container_widths.push(90 + offset_percentage)
    end
    puts "#{side} container widths: #{container_widths.inspect}"
    container_widths
  end

end
