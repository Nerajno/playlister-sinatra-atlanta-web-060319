class SongsController < Sinatra::Base
set :views, 'app/views/songs'

  get '/new' do
    @genres = Genre.all
    @song = Song.new
    erb :new
  end

  get '/songs' do
    @songs = Song.all
    erb :index
  end

  # post '/songs' do
  #   @artist = Artist.create(name: params[:song][:artist][:name])
  #   @song = Song.create(params[:song])
  #   params[:song].each do |song|
  #     name: song[:name],
  #     artist_id: @artist.id,
  #
  #   end
  # redirect "/songs/#{@song.id}"
  # end

  post '/songs' do
    @artist = Artist.create(name: params[:song][:artist][0][:name]),
    @song = Song.create(params[:song])
    binding.pry
    this 
    erb :new
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :show
  end

end
