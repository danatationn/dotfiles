function ffconvert -w ffmpeg -d "Converts every file to the specified format recursively"
	for i in **
        	if test (path extension $i) = .$argv
			echo $i is already $argv. Skipping...
			continue
		end
		set j (path change-extension $argv $i)
        	ffmpeg -y -i $i $j
	end
	
	echo \a
	notify-send "ffconvert" "All the files have been converted!" -a "ffconvert"
	
end
