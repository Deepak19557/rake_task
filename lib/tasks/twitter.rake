namespace :twitter do
  desc "TODO"
  task logins: :environment do
  	puts 'twitter login'
  	#byebug
  	a = User.first.email
  	if @user != nil
		self.resource = warden.authenticate!(auth_options)
		sign_in @user
		redirect_to root_path
	end
  end

end
