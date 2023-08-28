module LinksHelper

  def get_turbo_frame_name(frame_name)
    convert_title_to_snake_case(frame_name) + "_frame"
  end

  def get_turbo_links_frame_name(link_name)
    convert_title_to_snake_case(link_name) + "_links_frame"
  end

  def get_description_title_case(description_snake_case)
    description_title_case = convert_snake_to_title_case(description_snake_case)
    description_title_case.to_s
  end

  def get_page_link_id(link_name, page, position)
    return "#{convert_title_to_snake_case link_name}_#{convert_title_to_snake_case page}_#{position}"
  end

end
