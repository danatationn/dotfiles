function notify-exec -d "Pings you whenever a command gets executed"
	time $argv
	if test $status = 0
		echo Done! \a
		notify-send "$argv" "The command has finished!" -a "notify-exec"
	else
		echo Error! \a
		notify-send "$argv" "The command has failed!" -a "notify-exec"
	end
end
