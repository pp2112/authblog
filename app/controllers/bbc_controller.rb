class BbcController < ApplicationController

 def index
   FeedEntry.update_from_feed("http://feeds.bbci.co.uk/news/rss.xml")
 end

end
