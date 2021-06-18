# namespace :universe do
#   desc "TODO"
#   task test: :environment do
#   end

# end
# namespace :universe do
#     namespace :world do
#         desc 'shout message'
#         task :shout do
#     #    	Current_user.login
#             puts "hello world"
#         end
#     end
# end
#set :output, "log/cron.log"
namespace :universe do 
	namespace :world do 
		desc 'logging'
		task :shout do 
			@user = User.first.email#([:user][:eamil])
			if @user != nil
				self.resource = warden.authenticate!(auth_options)
				sign_in @user
				redirect_to root_path
			end
		end
	end
end


namespace :day do
  desc 'twitter'
  task :create => [ :environment ] do    
       @user = User.first.email#([:user][:eamil])
       if @user != nil
			self.resource = warden.authenticate!(auth_options)
			sign_in @user
			redirect_to root_path
		end 
    end 
end

# def create
#     @user = User.find_by_eamil(params[:user][:eamil])
#     if @user != nil 
#         self.resource = warden.authenticate!(auth_options)
#         sign_in @user 
#         redirect_to root_path 
#     end
# end