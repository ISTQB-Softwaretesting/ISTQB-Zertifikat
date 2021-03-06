module ApplicationHelper

  def name_with_status(name, status, user_id, team)
    link_to(name, user_path(user_id), :class => "name") +
      content_tag(:span, team, :class => "name") +
      content_tag(:span, status, :class => "status status-#{status}", data: {userid: user_id.to_s}) +
      link_to("Update", status_user_path(user_id), :class => "update-link", id:"update-"+user_id.to_s)
  end

end
