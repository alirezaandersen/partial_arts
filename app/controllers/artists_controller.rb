class PartialArts < Sinatra::Base

  helpers do

    def artist_url
    "<a href='/artists'>All Artists</a> <br>"
    end

    def link_to(route, title)
      "<a href='/#{route}'>#{title}</a>"
    end

    def format_title
      element.capitalize
    end

  end

  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  get '/artists/:id' do |id|
    @artist = Artist.find(id)
    erb :'artists/show'
  end
end
