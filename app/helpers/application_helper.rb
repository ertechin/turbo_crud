module ApplicationHelper
  def error_css(obj, css)
    obj.errors.any? ? css : ''
  end
end
