class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
  helper_method :current_account
	helper_method :current_sound
  
  def current_account
  	if cookies[:account_id]
  		Account.find_by_auth_token(cookies[:account_id])
		else
			nil
		end
	end

	def current_sound
		if cookies[:current_sound]
			cookies[:current_sound]
		else
			nil
		end
	end
end
