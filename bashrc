#source this fgt
webm() {
	ffmpeg -i $1 -c:v libvpx -pass 1 -an -f rawvideo -y /dev/null 
	ffmpeg -i $1 -c:v libvpx -pass 2 -f webm -fs 9971472 $1.webm
}
export -f webm
