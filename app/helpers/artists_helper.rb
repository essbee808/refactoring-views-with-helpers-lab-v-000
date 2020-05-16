module ArtistsHelper
  def display_artist(song)
    song.artist_id?
    if !song.artist.nil?
      link_to song.artist.name, artist_path(@artist)
    else #not associated with a song
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
