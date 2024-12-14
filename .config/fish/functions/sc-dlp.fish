function sc-dlp -w yt-dlp -d "Suited for mass-downloading Soundcloud songs"
	# --parse-metadata "genres:%(genre)s" can return "[]"
	# track_total is not a valid to key

	yt-dlp	--embed-metadata\
			--embed-thumbnail\
			-x\
			--audio-format mp3\
			--parse-metadata "playlist_title:%(album)s"\
			--parse-metadata "description:%(comment)s"\
			--parse-metadata "uploader:%(album_artist)s"\
			--parse-metadata "playlist_index:%(track_number)s"\
			-o "%(album)s/%(track_number)s. %(title)s.%(ext)s"\
			$argv
			
	echo \a
	notify-send "sc-dlp" "All the music has been downloaded!" -a "sc-dlp"
	
end
