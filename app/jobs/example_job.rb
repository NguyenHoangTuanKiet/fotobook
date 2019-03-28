class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    args.each do |arg|
      puts arg
    end
  end

end
