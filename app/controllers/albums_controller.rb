class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:success] = 'Album created'
      redirect_to root_path
    else
      flash[:failure] = 'Album is not created'
      redirect_to root_path
    end
  end

  private

  def album_params
    params.require(:album).permit(:title)
  end

end
