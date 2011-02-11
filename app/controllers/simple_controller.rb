class SimpleController < ApplicationController
  def index
    @duration = sleep_duration
    sleep(@duration)
  end
  private
    #random time to sleep
    #returns a random value between 0.1 and 1.0
    def sleep_duration
      (1..10).sort_by { rand }.collect!{|x| x/10.0}[rand(10)]
    end
end
