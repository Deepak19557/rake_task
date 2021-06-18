#set :environment, "development"
# set :output, "#{path}/log/cron.log"
# job_type :script, "'#{path}/script/:task' :output"

# # every 2.minute do
# #   rake "current_user.login"
# # end

# # every :day, :at => "12:00am" do
# #   command "current_user.login"
# #   runner "current_user.login"
# # end

# # every :tuesday, :at => '12pm' do 
# # 	binding.pry
# #   runner "Task.do_something_great"
# # end

# env :PATH, ENV['path']
# set :output, "log/cron.log"

# every :sunday, at: '12pm' do # Use any day of the week or :weekend, :weekday
#   runner "Task.do_something_great"
# end

# every 1.day, at: '4:30 am' do
#   runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
# end

# every 1.day, at: ['4:30 am', '6:00 pm'] do
#   runner "Mymodel.task_to_run_in_two_times_every_day"
# end

 
# every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#   runner "SomeModel.ladeeda"
# end

# every '0 0 27-31 * *' do
#   command "echo 'you can use raw cron syntax too'"
# end

# every :tuesday, :at => '17:09pm' do 
# 	#binding.pry
#   #rake 'universe:test'
#   runner "Task.universe"
# end

# every 1.day, at: '06:46 am' do
#     rake 'day:create'
# end

# every :tuesday, :at => '07:45 pm' do
#     rake 'twitter:login'
#     #runner "Task.twitter"
# end 


# every :wednesday, :at => '08:15 pm' do
# 	#byebug
#     rake 'twitter:login' 
#     #runner "Task.twitter"
# end

# every 1.minute do
# 	puts 'om' 
# end

# every 1.minute do 
# 	command "echo 'kyle, you are the greatest.'"
# end

# every 2.minute do 
# 	command "rm '#{path}/tmp/cache/foo.txt'"
# 	script "generate_report"
# end

# every :wednesday, at: '2:59 PM' do 
# 	runner "Cart.clear_abandoned"
# end 

# every :reboot do 
# 	rake "ts:start"
# end

# every 1.minute do 
# 	runner "ExampleJob.perform_now"
# end 

# every 1.minute do
#     runner "Member.create(name:"indore")", :environment => :development
# end  

every :day, :at => '12:20am', :roles => [:app] do
  rake "app_server:task"
end

every 1.minute do

    rake 'sample:test'
 end
