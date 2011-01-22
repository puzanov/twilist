class HomeController < ActionController::Base
  def index
    @tweets = Tweet.all.order_by(:twitter_id.desc)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def bla
    loop do
      puts "pizda"
      sleep 5
    end
  end
end
