module ApplicationHelper
  def c(selector)
    # For example, will convert "welcome/specs/_specs" to "welcome-specs"
    dashed_path = Pathname(@virtual_path).each_filename.to_a[0..-2].join('-')

    "app-javascript-styles-#{dashed_path}-module__#{selector}"
  end
end
