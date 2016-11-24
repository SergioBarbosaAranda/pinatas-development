module ApplicationHelper
	def is_home_index_page
		value = 'main-menu-margin-bottom'
		if params[:action] == "index" && params[:controller] == "home"
			value = ''
		end
		value
	end
end
