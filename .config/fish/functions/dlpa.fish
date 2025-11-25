function dlpa -w yt-dlp -d "Suited for mass-downloading Soundcloud songs"
	yt-dlp --embed-metadata\
		   --embed-thumbnail\
		   -x\
		   --audio-format mp3\
		   --parse-metadata "title:%(album)s"\
		   --parse-metadata "playlist_title:%(album)s"\
		   --parse-metadata "description:%(comment)s"\
		   --parse-metadata "uploader:%(album_artist)s"\
		   --parse-metadata "playlist_index:%(track_number)s"\
		   --replace-in-metadata "album" "NA" ""\
		   --replace-in-metadata "track_number" "NA" "1"\
		   -o "%(album)s/%(track_number)s. %(title)s.%(ext)s"\
		   $argv
		   
	rsgain easy -S -m 4 (pwd)
end

