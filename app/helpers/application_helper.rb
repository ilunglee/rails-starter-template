module ApplicationHelper

  def rails_route
    "#{controller_name}-#{action_name}"
  end

end
