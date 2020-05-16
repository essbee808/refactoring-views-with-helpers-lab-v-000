module ArtistsHelper
  def display_artist(song)
    if song.artist
      link_to "<%= artist.name %>", song_path(song)
    else #not associated with a song
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
