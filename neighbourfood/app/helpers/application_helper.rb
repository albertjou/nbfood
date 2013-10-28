module ApplicationHelper
    def intellinav
      links = ""
      if @auth.present?
        if @auth.is_admin
          links += "<li>#{link_to("Show Users", users_path)}</li>"
        end
        links += "<li>#{ link_to('Edit User', edit_users_path )}</li>"
        links += "<li>#{ link_to('Logout ' + @authenticated.name, login_path, :method => 'delete', :confirm => 'Are you sure?') }</li>"
      else
        links += "<li>#{ link_to('Create Account', new_user_path) }</li>" +
        links += "<li>#{ link_to('Login', login_path) }</li>"
      end
      links
  end
end
