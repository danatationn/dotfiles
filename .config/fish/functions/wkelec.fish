function wkelec -w exec -d "Fixes a weird bug where some electron apps just show a black screen"
	WEBKIT_DISABLE_DMABUF_RENDERER=1 exec $argv
end
