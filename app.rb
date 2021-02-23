# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    @bookmarks = Bookmarks.new
    erb :bookmarks
  end

  post '/' do
    Bookmarks.new.add(params[:url])
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
