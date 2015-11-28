module ApplicationHelper

  def hierarchy_toString(lead)
	str = "<a href=\"#{ user_path(lead.id) }\">#{lead.name + " " + lead.surname}</a></li>"
	if(lead.children.size == 0)
		('<li class="last">' + str).html_safe
	else
		str += '<ul class="tree">'
		lead.children.each do |c|
			str += hierarchy_toString(c)
		end
		str += "</ul>"
		('<li>' + str).html_safe
	end
  end
end
