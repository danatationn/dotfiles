function dlps -w yt-dlp -d "Suited for mass-downloading Soundcloud songs"
	yt-dlp --embed-metadata\
		   --embed-thumbnail\
		   -x\
		   --audio-format mp3\
		   --parse-metadata "playlist_title:%(album)s"\
		   --parse-metadata "title:%(album)s"\
		   --parse-metadata "description:%(comment)s"\
		   --parse-metadata "uploader:%(album_artist)s"\
		   --parse-metadata "playlist_index:%(track_number)s"\
		   --replace-in-metadata "album" "NA" ""\
		   --replace-in-metadata "track_number" "NA" "1"\
		   -o "%(album)s/%(track_number)s. %(title)s.%(ext)s"\
		   $argv
		   
	rsgain easy -S -m 4 (pwd)
	
	set album_folder (ls -td */ | head -n 1 | string trim -r -c '/')
	set music_folder (pwd)
	if test (count (ls $album_folder)) -eq 1
		set file (ls $album_folder)
		set new_file (string replace -r '^(.+)\. ' '' -- $file)  # trim off all prefixes
		mv "$album_folder/$file" "$music_folder/$new_file"
		rmdir $album_folder
	end
end

