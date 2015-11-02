class Tasks::AlertTask < ApplicationController
  def self.execute
    @tweet = Tweet.all
    
    puts 'Hoge'
  end
end