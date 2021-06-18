class ExampleJob < ApplicationJob
  queue_as :urgent

  def perform(*args)
  	puts 'hello yuvasoft'
    # Do something later
  end
end
