module LinksHelper

  def convert_title_to_snake_case(title_case)
    title_case.gsub(" ", "_").downcase
  end

  def convert_snake_to_title_case(snake_case)
    snake_case.gsub("_", " ").titleize
  end

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

end
