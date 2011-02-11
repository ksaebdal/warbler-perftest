class SimpleController < ApplicationController
  def index
    @duration = sleep_duration
    sleep(@duration)
  end
  private
    #random time to sleep
    #returns a random value between 0.0 and 0.5
    def sleep_duration
      range = (0...5)
      range.sort_by { rand }.collect!{|x| x/10.0}[rand(range.to_a.size)]
    end
end
