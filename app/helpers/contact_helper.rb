module ContactHelper
  def title
    "#{controller.action_name.humanize} | #{controller.controller_name.humanize}"
  end
end
