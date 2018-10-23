class CountdownJob < ApplicationJob
  queue_as :default 

  def perform(*args)
    def func1()
       return Time.now
    end
  end
end
