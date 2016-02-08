class Github

  def get_profile



    HTTParty.get('http://api.social-searcher.com/v2/search?q=wynwood&type=photo&network=instagram,flickr&limit=100&key=f850f3cd5c87c463532bd53e061c694e')

  end

end
