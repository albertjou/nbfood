module ApplicationHelper
    def intellinav
      links = ""
      if @auth.present?
        # if @auth.is_admin
        #   links += "<li>#{link_to("Show Users", users_path)}</li>"
        # end
        links += "<%= render :partial => '/layouts/loggedin' %>"
      else
        links += "<%= render :partial => '/session/login' %>"
      end
      links
  end
end
