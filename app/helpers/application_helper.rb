module ApplicationHelper

  def hierarchy_toString(lead)
	str = "<li> <a href=\"#{ user_path(lead.id) }\">#{lead.name + " " + lead.surname}</a></li>"
	if(lead.children.size == 0)
		str.html_safe
	else
		str += "<ul>"
		lead.children.each do |c|
			str += hierarchy_toString(c)
		end
		str += "</ul>"
		str.html_safe
	end
  end
end
