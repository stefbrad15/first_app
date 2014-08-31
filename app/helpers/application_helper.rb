module ApplicationHelper

	def full_title(page_title)
		base_title = "Rails Fun"
		if page_title.empty?
			"#{base_title}"
		else
			"#{base_title} on the #{page_title} page" 
		end
	end
end
