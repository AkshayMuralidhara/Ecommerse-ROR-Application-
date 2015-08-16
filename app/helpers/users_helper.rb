module UsersHelper
def display_date_and_email
	user=User.find session[:user_id]
"#{Time.now.strftime('%Y-%m-%d')} login as #{user.email}"
end
end
