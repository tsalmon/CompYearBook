module ApplicationHelper

  def hierarchy_toString(lead)
	str = lead.first_name + " " + lead.last_name
	unless lead.parent
		str = '<li class="root">' + "#{ link_to str , user_path(lead.id) }" + '</li>'
		lead.children.each do |c|
			str += "<li>" + hierarchy_toString(c) + "</li>"
		end
	else
		str = "<li>#{ link_to str, user_path(lead.id) }"
		if(lead.children.size == 0)
			(str).html_safe
		else
			str += '<ul>'
			lead.children.each do |c|
				str += hierarchy_toString(c)
			end
			str += "</ul></li>"
			str.html_safe
		end
	end
	str.html_safe
  end

  def other
	str = "<li><a href=\"#{ user_path(lead.id) }\">#{lead.first_name + " " + lead.last_name}</a>"
	if(lead.children.size == 0)
		(str + "</li>").html_safe
	else
		str += '<ul>'
		lead.children.each do |c|
			str += hierarchy_toString(c)
		end
		str += "</ul></li>"
		str.html_safe
	end
  end
end
