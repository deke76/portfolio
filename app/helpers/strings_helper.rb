module StringsHelper

  def convert_title_to_snake_case(title_case)
    title_case.gsub(" ", "_").downcase
  end

  def convert_snake_to_title_case(snake_case)
    snake_case.gsub("_", " ").titleize
  end

  def convert_title_to_kebab_case(title_case)
    title_case.gsub(" ", "-").downcase
  end

end